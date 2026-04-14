import { Link } from 'react-router-dom'
import { MapPin, Star } from 'lucide-react'
import { useFerias } from '@hooks/useFerias'

export default function FeriasPage() {
  const { data: ferias = [], isLoading, isError } = useFerias()

  if (isLoading) return <div className="text-center py-20 text-gray-500">Cargando ferias...</div>
  if (isError) return <div className="text-center py-20 text-red-500">Error al cargar ferias.</div>

  return (
    <div className="max-w-7xl mx-auto px-4 py-10">
      <h1 className="text-2xl font-bold text-gray-800 mb-6">Ferias disponibles</h1>
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
        {ferias.map((feria) => (
          <Link key={feria.id} to={`/ferias/${feria.id}`} className="card hover:shadow-lg transition-shadow">
            <div className="flex items-start justify-between mb-2">
              <h2 className="font-semibold text-gray-800">{feria.nombre}</h2>
              <span className="badge bg-primary-100 text-primary-700">{feria.tipo}</span>
            </div>
            <p className="text-sm text-gray-500 flex items-center gap-1 mb-3">
              <MapPin size={13} /> {feria.direccion}
            </p>
            <div className="flex items-center gap-1 text-sm text-yellow-500">
              <Star size={14} fill="currentColor" />
              <span className="text-gray-600">{feria.promedioCalificacion ?? '—'}</span>
            </div>
          </Link>
        ))}
      </div>
    </div>
  )
}
