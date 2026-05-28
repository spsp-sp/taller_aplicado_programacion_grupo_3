import { MapContainer, TileLayer, Marker, Popup, useMap } from 'react-leaflet'
import { useEffect, useState } from 'react'
import { useSearchParams } from 'react-router-dom'
import { MapPin, Navigation } from 'lucide-react'
import L from 'leaflet'
import useGeolocation from '@hooks/useGeolocation'
import { useFeriasNearby } from '@hooks/useFerias'
import pinIcono from '../assets/image/pin1.png';
import pinFeria from '../assets/image/pin4.png';


function MapUpdater({ center, zoom }) {
    const map = useMap()

    useEffect(() => {
        if (center) {
            map.setView(center, zoom)
        }
    }, [center, zoom, map])

    return null
}

// Icono personalizado c: me falta areglar la sombra del pin
const userLocationIcon = L.icon({
    iconUrl: pinIcono,
    shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
    iconSize: [40, 40],
    iconAnchor: [20, 40],
    popupAnchor: [0, -40],
    shadowSize: [41, 41],
    shadowAnchor: [13, 41]
});

// Icono personalizado para las ferias
const feriaIcono = L.icon({
    iconUrl: pinFeria,
    shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
    iconSize: [40, 40],
    iconAnchor: [20, 40],
    popupAnchor: [0, -40],
    shadowSize: [41, 41],
    shadowAnchor: [13, 41]
});

const DEFAULT_CENTER = [-33.4489, -70.6693] // Santiago, Chile
const DEFAULT_ZOOM = 13

export default function MapPage() {
    const { position, loading, getPosition } = useGeolocation()
    const [searchParams, setSearchParams] = useSearchParams()

    const urlLat = searchParams.get('lat')
    const urlLng = searchParams.get('lng')
    const urlUbi = searchParams.get('ubi')

    // Usar la posición persistente para el centro inicial si existe
    const [center, setCenter] = useState(() => {
        if (urlLat && urlLng) {
            return [Number(urlLat), Number(urlLng)]
        }
        const saved = localStorage.getItem('userLocation')
        if (saved) {
            const pos = JSON.parse(saved)
            return [pos.lat, pos.lng]
        }
        return DEFAULT_CENTER
    })

    const [mapKey, setMapKey] = useState(0)

    // Actualizar el centro cuando la posición cambia (ej: al presionar el botón)
    useEffect(() => {
        if (position && !urlLat) {
            setCenter([position.lat, position.lng])
        }
    }, [position, urlLat])

    const { data: ferias = [] } = useFeriasNearby({
        lat: position?.lat,
        lng: position?.lng,
        radius: 500000,
    })

    // Forzar re-render del mapa cuando cambia la posición
    useEffect(() => {
        if (position) {
            setMapKey((prev) => prev + 1)
        }
    }, [position])

    return (
        <div className="flex flex-col h-[calc(100vh-4rem)]">
            {/* Toolbar */}
            <div className="bg-white border-b border-gray-100 px-4 py-3 flex items-center gap-3">
                <MapPin size={18} className={position ? 'text-green-600' : 'text-gray-400'} />
                <span className="font-medium text-sm text-gray-700">
          {urlUbi ? 'Viendo ubicación seleccionada' : (position ? `Tu ubicación: ${position.lat.toFixed(4)}, ${position.lng.toFixed(4)}` : 'Mapa de ferias')}
        </span>

                <div className="ml-auto flex gap-2">
                    {urlUbi && (
                        <button
                            onClick={() => {
                                setSearchParams({}); // Limpia los parámetros de la URL
                                setMapKey(prev => prev + 1); // Fuerza el refresco del mapa
                            }}
                            className="bg-gray-100 text-gray-700 hover:bg-gray-200 text-xs py-1.5 px-3 rounded-lg font-bold transition-colors border border-gray-200"
                        >
                            Ver todas las ferias
                        </button>
                    )}
                    <button
                        onClick={getPosition}
                        disabled={loading}
                        className="ml-auto btn-primary text-sm py-1.5 px-3"
                    >
                        <Navigation size={14} />
                        {loading ? 'Localizando...' : 'Mi ubicación'}
                    </button>
                </div>
            </div>

            {/* Map */}
            <div className="flex-1">
                <MapContainer
                    key={mapKey}
                    center={center}
                    zoom={DEFAULT_ZOOM}
                    className="w-full h-full"
                    style={{ borderRadius: 0 }}
                >
                    <TileLayer
                        attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>'
                        url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                    />

                    {/* Marcador de ubicación del usuario */}
                    {position && (
                        <Marker position={[position.lat, position.lng]} icon={userLocationIcon}>
                            <Popup>
                                <div className="text-center">
                                    <p className="font-semibold text-sm">Tu ubicación</p>
                                    <p className="text-xs text-gray-500 mt-1">
                                        {position.lat.toFixed(4)}, {position.lng.toFixed(4)}
                                    </p>
                                </div>
                            </Popup>
                        </Marker>
                    )}

                    {/* Marcadores de ferias cercanas */}
                    {ferias.map((feria) =>
                        feria.ubicaciones?.map((ubicacion) => {
                            // Si hay un 'ubi' en la URL, solo mostramos esa ubicación específica
                            if (urlUbi && Number(urlUbi) !== ubicacion.id) return null;

                            return (
                                <Marker
                                    key={`${feria.id}-${ubicacion.id}`}
                                    position={[Number(ubicacion.latitud), Number(ubicacion.longitud)]}
                                    icon={feriaIcono}
                                >
                                    <Popup>
                                        <div className="min-w-[160px]">
                                            <h3 className="font-semibold text-sm">{feria.nombre}</h3>
                                            <p className="text-xs text-gray-500 mt-1">
                                                {ubicacion.callePrincipal}
                                                {ubicacion.calleInicio && ` (e/ ${ubicacion.calleInicio} y ${ubicacion.calleTermino})`}
                                            </p>
                                            <a
                                                href={`/ferias/${feria.id}`}
                                                className="text-xs text-primary-600 hover:underline mt-2 block"
                                            >
                                                Ver detalle →
                                            </a>
                                        </div>
                                    </Popup>
                                </Marker>
                            );
                        })
                    )}

                    {/* Actualizar vista del mapa cuando cambia el centro */}
                    <MapUpdater center={center} zoom={DEFAULT_ZOOM} />
                </MapContainer>
            </div>
        </div>
    )
}