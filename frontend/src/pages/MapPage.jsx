import { MapContainer, TileLayer, Marker, Popup, useMap } from 'react-leaflet'
import { useEffect, useState, useMemo } from 'react'
import { useSearchParams } from 'react-router-dom'
import { MapPin, Navigation, ChevronDown, Filter } from 'lucide-react'
import L from 'leaflet'
import useGeolocation from '@hooks/useGeolocation'
import { useFeriasNearby } from '@hooks/useFerias'
import api from '@services/api'
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

// Icono personalizado
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

    // Estado de filtros en edición
    const [tempFilters, setTempFilters] = useState({
        distancia: urlUbi ? 'all' : 5000,
        comunaId: '',
        dia: ''
    })

    // Estado de filtros aplicados
    const [appliedFilters, setAppliedFilters] = useState({
        distancia: urlUbi ? 'all' : 5000,
        comunaId: '',
        dia: ''
    })

    const [center, setCenter] = useState(() => {
        if (urlLat && urlLng) return [Number(urlLat), Number(urlLng)]
        const saved = localStorage.getItem('userLocation')
        if (saved) {
            const pos = JSON.parse(saved)
            return [pos.lat, pos.lng]
        }
        return DEFAULT_CENTER
    })

    const [mapKey, setMapKey] = useState(0)
    const [showFilters, setShowFilters] = useState(false)
    const [comunas, setComunas] = useState([])

    // Cargar comunas
    useEffect(() => {
        api.get('/comunas')
            .then(res => setComunas(res.data))
            .catch(err => console.error("Error al obtener comunas:", err))
    }, [])

    // Manejar exclusión mutua en los filtros temporales
    const handleFilterChange = (field, value) => {
        setTempFilters(prev => {
            const newFilters = { ...prev, [field]: value };

            // Si se selecciona una comuna, se bloquea/anula la distancia
            if (field === 'comunaId' && value !== '') {
                newFilters.distancia = 'all';
            }
            // Si se selecciona una distancia específica, se anula la comuna
            if (field === 'distancia' && value !== 'all') {
                newFilters.comunaId = '';
            }

            return newFilters;
        });
    }

    const applyFilters = () => {
        setAppliedFilters(tempFilters);
        setShowFilters(false);
    }

    // Sincronizar centro cuando vienen parámetros de URL
    useEffect(() => {
        if (urlLat && urlLng) {
            setCenter([Number(urlLat), Number(urlLng)])
            const ubiFilters = { distancia: 'all', comunaId: '', dia: '' };
            setTempFilters(ubiFilters);
            setAppliedFilters(ubiFilters);
        }
    }, [urlLat, urlLng])

    // Actualizar el centro cuando la posición cambia (solo si no hay URL params)
    useEffect(() => {
        if (position && !urlLat) {
            setCenter([position.lat, position.lng])
        }
    }, [position, urlLat])

    // Memorizar parámetros para la query
    const queryParams = useMemo(() => {
        const params = {
            lat: position?.lat || center[0],
            lng: position?.lng || center[1],
            radius: appliedFilters.distancia
        }

        if (appliedFilters.comunaId) {
            params.comunaId = appliedFilters.comunaId;
        }

        if (appliedFilters.dia) {
            params.dia = appliedFilters.dia;
        }

        return params;
    }, [position, center, appliedFilters])

    const { data: ferias = [] } = useFeriasNearby(queryParams)

    // Forzar re-render del mapa cuando cambia la posición del usuario
    useEffect(() => {
        if (position) {
            setMapKey((prev) => prev + 1)
        }
    }, [position])

    const diasSemana = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']
    const distancias = [
        { value: 1000, label: '1 km' },
        { value: 2000, label: '2 km' },
        { value: 5000, label: '5 km' },
        { value: 10000, label: '10 km' },
        { value: 20000, label: '20 km' },
        { value: 'all', label: 'Todas las ferias' },
    ]

    return (
        <div className="flex flex-col h-[calc(100vh-4rem)]">
            {/* Toolbar */}
            <div className="bg-white border-b border-gray-100 px-4 py-3 flex items-center gap-3 shadow-sm z-20">
                <MapPin size={18} className={(position || urlUbi) ? 'text-green-600' : 'text-gray-400'} />
                <span className="font-medium text-sm text-gray-700">
                    {urlUbi ? 'Viendo ubicación seleccionada' : (position ? `Tu ubicación: ${position.lat.toFixed(4)}, ${position.lng.toFixed(4)}` : 'Mapa de ferias')}
                </span>

                <div className="ml-auto flex gap-2">
                    {urlUbi && (
                        <button
                            onClick={() => {
                                setSearchParams({});
                                const resetFilters = { distancia: 5000, comunaId: '', dia: '' };
                                setTempFilters(resetFilters);
                                setAppliedFilters(resetFilters);
                                setMapKey(prev => prev + 1);
                            }}
                            className="bg-gray-100 text-gray-700 hover:bg-gray-200 text-xs py-1.5 px-3 rounded-lg font-bold transition-colors border border-gray-200"
                        >
                            Ver todas las ferias
                        </button>
                    )}
                    <button
                        onClick={() => setShowFilters(!showFilters)}
                        className={`text-xs py-1.5 px-3 rounded-lg font-bold transition-colors border flex items-center gap-1 ${showFilters ? 'bg-green-600 text-white border-green-600' : 'bg-white text-gray-700 border-gray-200 hover:bg-gray-50'}`}
                    >
                        <Filter size={14} />
                        Filtros
                        <ChevronDown size={14} className={`transition-transform ${showFilters ? 'rotate-180' : ''}`} />
                    </button>
                    <button
                        onClick={getPosition}
                        disabled={loading}
                        className="btn-primary text-sm py-1.5 px-3"
                    >
                        <Navigation size={14} />
                        {loading ? 'Localizando...' : 'Mi ubicación'}
                    </button>
                </div>
            </div>

            {/* Panel de Filtros */}
            {showFilters && (
                <div className="bg-white border-b border-gray-100 px-4 py-5 shadow-md z-10 animate-in slide-in-from-top duration-200">
                    <div className="max-w-5xl mx-auto">
                        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-5">
                            {/* Filtro de Distancia */}
                            <div className={tempFilters.comunaId !== '' ? 'opacity-50' : ''}>
                                <label className="block text-[11px] font-bold text-gray-700 uppercase mb-2 ml-1 flex justify-between">
                                    Distancia
                                    {tempFilters.comunaId !== '' && <span className="text-[9px] text-amber-600 normal-case">(Bloqueado por Comuna)</span>}
                                </label>
                                <select
                                    className="w-full bg-white border border-gray-200 rounded-lg p-2.5 text-sm text-gray-700 focus:ring-2 focus:ring-green-500 outline-none disabled:bg-gray-50"
                                    value={tempFilters.distancia}
                                    disabled={tempFilters.comunaId !== ''}
                                    onChange={(e) => {
                                        const val = e.target.value === 'all' ? 'all' : Number(e.target.value);
                                        handleFilterChange('distancia', val);
                                    }}
                                >
                                    {distancias.map(d => (
                                        <option key={d.value} value={d.value}>{d.label}</option>
                                    ))}
                                </select>
                            </div>

                            {/* Filtro de Comuna */}
                            <div className={tempFilters.distancia !== 'all' ? 'opacity-50' : ''}>
                                <label className="block text-[11px] font-bold text-gray-700 uppercase mb-2 ml-1 flex justify-between">
                                    Comuna
                                    {tempFilters.distancia !== 'all' && <span className="text-[9px] text-amber-600 normal-case">(Bloqueado por Distancia)</span>}
                                </label>
                                <select
                                    className="w-full bg-white border border-gray-200 rounded-lg p-2.5 text-sm text-gray-700 focus:ring-2 focus:ring-green-500 outline-none disabled:bg-gray-50"
                                    value={tempFilters.comunaId}
                                    disabled={tempFilters.distancia !== 'all'}
                                    onChange={(e) => handleFilterChange('comunaId', e.target.value)}
                                >
                                    <option value="">Todas las comunas</option>
                                    {Array.isArray(comunas) && comunas.map(c => (
                                        <option key={c.id} value={c.id}>{c.nombre}</option>
                                    ))}
                                </select>
                            </div>

                            {/* Filtro de Día */}
                            <div>
                                <label className="block text-[11px] font-bold text-gray-700 uppercase mb-2 ml-1">Día de Funcionamiento</label>
                                <select
                                    className="w-full bg-white border border-gray-200 rounded-lg p-2.5 text-sm text-gray-700 focus:ring-2 focus:ring-green-500 outline-none capitalize"
                                    value={tempFilters.dia}
                                    onChange={(e) => handleFilterChange('dia', e.target.value)}
                                >
                                    <option value="">Cualquier día</option>
                                    {diasSemana.map(d => (
                                        <option key={d} value={d}>{d}</option>
                                    ))}
                                </select>
                            </div>
                        </div>

                        <div className="flex justify-end gap-3 border-t border-gray-100 pt-4">
                            <button
                                onClick={() => {
                                    const reset = { distancia: 5000, comunaId: '', dia: '' };
                                    setTempFilters(reset);
                                    setAppliedFilters(reset);
                                    setShowFilters(false);
                                }}
                                className="text-xs font-bold text-gray-500 hover:text-gray-700 px-4 py-2"
                            >
                                Limpiar filtros
                            </button>
                            <button
                                onClick={applyFilters}
                                className="bg-green-600 hover:bg-green-700 text-white text-xs font-bold py-2 px-6 rounded-lg transition-all shadow-md"
                            >
                                Aplicar Filtros
                            </button>
                        </div>
                    </div>
                </div>
            )}

            {/* Map */}
            <div className="flex-1 relative">
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

                    {/* Marcadores de ferias */}
                    {Array.isArray(ferias) && ferias.map((feria) =>
                        feria.ubicaciones?.map((ubicacion) => {
                            if (urlUbi && Number(urlUbi) !== ubicacion.id) return null;

                            return (
                                <Marker
                                    key={`${feria.id}-${ubicacion.id}`}
                                    position={[Number(ubicacion.latitud), Number(ubicacion.longitud)]}
                                    icon={feriaIcono}
                                >
                                    <Popup>
                                        <div className="min-w-[180px] p-1">
                                            <h3 className="font-bold text-sm text-green-800">{feria.nombre}</h3>
                                            <div className="flex items-start gap-1 mt-1 text-gray-600">
                                                <MapPin size={12} className="mt-0.5 flex-shrink-0" />
                                                <p className="text-[11px] leading-tight">
                                                    {ubicacion.callePrincipal}
                                                    {ubicacion.calleInicio && <span className="block text-gray-400">e/ {ubicacion.calleInicio} y {ubicacion.calleTermino}</span>}
                                                </p>
                                            </div>

                                            <div className="mt-3">
                                                <p className="text-[10px] font-bold text-gray-400 uppercase mb-1">Días de feria:</p>
                                                <div className="flex flex-wrap gap-1">
                                                    {ubicacion.diasFeria?.map(df => (
                                                        <span key={df.id} className="text-[9px] bg-green-50 text-green-700 px-1.5 py-0.5 rounded border border-green-100 capitalize font-medium">
                                                            {df.diaSemana}
                                                        </span>
                                                    ))}
                                                </div>
                                            </div>

                                            <a
                                                href={`/ferias/${feria.id}`}
                                                className="mt-4 w-full bg-gray-50 hover:bg-green-50 text-green-700 text-center py-1.5 rounded-md text-[11px] font-bold transition-colors block border border-gray-100"
                                            >
                                                Ver ficha completa
                                            </a>
                                        </div>
                                    </Popup>
                                </Marker>
                            );
                        })
                    )}

                    <MapUpdater center={center} zoom={DEFAULT_ZOOM} />
                </MapContainer>
            </div>
        </div>
    )
}