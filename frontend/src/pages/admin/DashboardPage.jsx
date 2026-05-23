import { Link } from 'react-router-dom'
import { useQuery } from '@tanstack/react-query'
import ferianteService from '@services/ferianteService'

export default function DashboardPage() {
  const { data: pendientes = [] } = useQuery({
    queryKey: ['feriantes-admin', 'pendiente'],
    queryFn: () => ferianteService.getFeriantes({ estado: 'pendiente' }),
  })

  return (
    <div className="max-w-7xl mx-auto px-4 py-10">
      <h1 className="text-2xl font-bold text-gray-800 mb-2">Panel de administración</h1>
      <p className="text-gray-500 mb-8">Gestiona la plataforma ConYapa desde aquí.</p>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        {/* Card solicitudes */}
        <Link
          to="/admin/solicitudes"
          className="card p-6 hover:shadow-lg transition-all duration-300 group cursor-pointer border-l-4 border-l-amber-400"
        >
          <div className="flex items-center justify-between mb-4">
            <span className="text-3xl">📋</span>
            {pendientes.length > 0 && (
              <span className="bg-amber-100 text-amber-800 text-sm font-bold px-3 py-1 rounded-full animate-pulse">
                {pendientes.length} pendiente{pendientes.length !== 1 ? 's' : ''}
              </span>
            )}
          </div>
          <h3 className="text-lg font-semibold text-gray-800 group-hover:text-primary-600 transition-colors">
            Solicitudes de feriantes
          </h3>
          <p className="text-sm text-gray-500 mt-1">
            Revisa y aprueba nuevos feriantes en la plataforma.
          </p>
        </Link>

        {/* Placeholder cards para futuras funcionalidades */}
        <div className="card p-6 opacity-50">
          <span className="text-3xl mb-4 block">📊</span>
          <h3 className="text-lg font-semibold text-gray-800">Estadísticas</h3>
          <p className="text-sm text-gray-500 mt-1">Próximamente: métricas de la plataforma.</p>
        </div>

        <div className="card p-6 opacity-50">
          <span className="text-3xl mb-4 block">👥</span>
          <h3 className="text-lg font-semibold text-gray-800">Gestión de usuarios</h3>
          <p className="text-sm text-gray-500 mt-1">Próximamente: administración de usuarios.</p>
        </div>
      </div>
    </div>
  )
}
