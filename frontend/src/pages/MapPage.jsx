import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet'
import { useEffect, useState } from 'react'
import { MapPin, Navigation } from 'lucide-react'
import useGeolocation from '@hooks/useGeolocation'
import { useFeriasNearby } from '@hooks/useFerias'

const DEFAULT_CENTER = [-33.4489, -70.6693] // Santiago, Chile
const DEFAULT_ZOOM = 13

export default function MapPage() {
  const { position, loading, getPosition } = useGeolocation()
  const center = position ? [position.lat, position.lng] : DEFAULT_CENTER

  const { data: ferias = [] } = useFeriasNearby({
    lat: position?.lat,
    lng: position?.lng,
    radius: 5000,
  })

  useEffect(() => {
    getPosition()
  }, [getPosition])

  return (
    <div className="flex flex-col h-[calc(100vh-4rem)]">
      {/* Toolbar */}
      <div className="bg-white border-b border-gray-100 px-4 py-3 flex items-center gap-3">
        <MapPin size={18} className="text-primary-600" />
        <span className="font-medium text-sm text-gray-700">
          {position ? `Tu ubicación: ${position.lat.toFixed(4)}, ${position.lng.toFixed(4)}` : 'Mapa de ferias'}
        </span>
        <button
          onClick={getPosition}
          disabled={loading}
          className="ml-auto btn-primary text-sm py-1.5 px-3"
        >
          <Navigation size={14} />
          {loading ? 'Localizando...' : 'Mi ubicación'}
        </button>
      </div>

      {/* Map */}
      <div className="flex-1">
        <MapContainer
          center={center}
          zoom={DEFAULT_ZOOM}
          className="w-full h-full"
          style={{ borderRadius: 0 }}
        >
          <TileLayer
            attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>'
            url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
          />
          {ferias.map((feria) => (
            <Marker key={feria.id} position={[feria.latitud, feria.longitud]}>
              <Popup>
                <div className="min-w-[160px]">
                  <h3 className="font-semibold text-sm">{feria.nombre}</h3>
                  <p className="text-xs text-gray-500 mt-1">{feria.direccion}</p>
                  <a
                    href={`/ferias/${feria.id}`}
                    className="text-xs text-primary-600 hover:underline mt-2 block"
                  >
                    Ver detalle →
                  </a>
                </div>
              </Popup>
            </Marker>
          ))}
        </MapContainer>
      </div>
    </div>
  )
}
