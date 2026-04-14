import { useParams } from 'react-router-dom'
import { MapPin, Clock, Star } from 'lucide-react'
import { useFeria } from '@hooks/useFerias'

export default function FeriaDetailPage() {
  const { id } = useParams()
  const { data: feria, isLoading, isError } = useFeria(id)

  if (isLoading) return <div className="text-center py-20 text-gray-500">Cargando feria...</div>
  if (isError || !feria) return <div className="text-center py-20 text-red-500">Feria no encontrada.</div>

  return (
    <div className="max-w-4xl mx-auto px-4 py-10">
      <div className="card p-6 mb-6">
        <div className="flex items-start justify-between mb-2">
          <h1 className="text-2xl font-bold text-gray-800">{feria.nombre}</h1>
          <span className="badge bg-primary-100 text-primary-700">{feria.tipo}</span>
        </div>
        <p className="text-gray-500 flex items-center gap-1 text-sm mb-1">
          <MapPin size={14} /> {feria.direccion}
        </p>
        <p className="text-gray-500 flex items-center gap-1 text-sm mb-4">
          <Clock size={14} /> {feria.horario || 'Horario no disponible'}
        </p>
        <p className="text-gray-700">{feria.descripcion}</p>
      </div>

      {/* Feriantes */}
      <section className="mb-8">
        <h2 className="text-lg font-semibold text-gray-700 mb-4">Feriantes</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          {(feria.feriantes || []).map((f) => (
            <div key={f.id} className="card flex items-center gap-3 p-4">
              <div className="w-10 h-10 rounded-full bg-primary-100 flex items-center justify-center text-primary-700 font-bold text-sm">
                {f.nombre.charAt(0)}
              </div>
              <div>
                <p className="font-medium text-sm">{f.nombre}</p>
                <p className="text-xs text-gray-500">{f.rubro}</p>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* Reseñas */}
      <section>
        <h2 className="text-lg font-semibold text-gray-700 mb-4">Reseñas</h2>
        {(feria.resenas || []).map((r) => (
          <div key={r.id} className="card mb-3 p-4">
            <div className="flex items-center gap-2 mb-1">
              <span className="font-medium text-sm">{r.usuario?.nombre}</span>
              <div className="flex text-yellow-400">
                {Array.from({ length: r.calificacion }).map((_, i) => (
                  <Star key={i} size={12} fill="currentColor" />
                ))}
              </div>
            </div>
            <p className="text-sm text-gray-600">{r.comentario}</p>
          </div>
        ))}
      </section>
    </div>
  )
}
