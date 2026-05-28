import { useState } from 'react'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { Link } from 'react-router-dom'
import toast from 'react-hot-toast'
import ferianteService from '@services/ferianteService'

const TABS = [
  { key: 'pendiente', label: 'Pendientes', color: 'amber' },
  { key: 'aprobado', label: 'Aprobados', color: 'green' },
  { key: 'rechazado', label: 'Rechazados', color: 'red' },
]

const estadoBadgeClass = {
  pendiente: 'bg-amber-100 text-amber-800',
  aprobado: 'bg-green-100 text-green-800',
  rechazado: 'bg-red-100 text-red-800',
}

export default function SolicitudesFeriantesPage() {
  const [activeTab, setActiveTab] = useState('pendiente')
  const queryClient = useQueryClient()

  const { data: feriantes = [], isLoading, isError } = useQuery({
    queryKey: ['feriantes-admin', activeTab],
    queryFn: () => ferianteService.getFeriantes({ estado: activeTab }),
  })

      const { mutate: aprobar, isPending: aprobando } = useMutation({
        mutationFn: ferianteService.approveFeriante,
        onSuccess: (data) => {
          toast.success(data.message || 'Feriante aprobado')
          queryClient.invalidateQueries({ queryKey: ['feriantes-admin'] })
          queryClient.invalidateQueries({queryKey: ['pending-count']})
        },
        onError: () => toast.error('Error al aprobar feriante'),
      })

  const { mutate: rechazar, isPending: rechazando } = useMutation({
    mutationFn: ferianteService.rejectFeriante,
    onSuccess: (data) => {
      toast.success(data.message || 'Feriante rechazado')
      queryClient.invalidateQueries({ queryKey: ['feriantes-admin'] })
      queryClient.invalidateQueries({queryKey: ['pending-count']})
    },
    onError: () => toast.error('Error al rechazar feriante'),
  })

  const [confirmAction, setConfirmAction] = useState(null) // { id, action: 'aprobar' | 'rechazar' }

  const handleConfirm = () => {
    if (!confirmAction) return
    if (confirmAction.action === 'aprobar') {
      aprobar(confirmAction.id)
    } else {
      rechazar(confirmAction.id)
    }
    setConfirmAction(null)
  }

  const isPending = aprobando || rechazando

  return (
    <div className="max-w-7xl mx-auto px-4 py-10">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between mb-8">
        <div>
          <Link to="/admin" className="text-sm text-primary-600 hover:underline mb-2 inline-block">
            ← Volver al panel
          </Link>
          <h1 className="text-2xl font-bold text-gray-800">Solicitudes de feriantes</h1>
          <p className="text-gray-500 mt-1">Revisa y gestiona las solicitudes de nuevos feriantes.</p>
        </div>
      </div>

      {/* Tabs */}
      <div className="flex gap-1 bg-gray-100 p-1 rounded-xl mb-6 w-fit">
        {TABS.map((tab) => (
          <button
            key={tab.key}
            onClick={() => setActiveTab(tab.key)}
            className={`px-5 py-2 rounded-lg text-sm font-medium transition-all duration-200 ${activeTab === tab.key
              ? 'bg-white text-gray-800 shadow-sm'
              : 'text-gray-500 hover:text-gray-700'
              }`}
          >
            {tab.label}
          </button>
        ))}
      </div>

      {/* Content */}
      {isLoading ? (
        <div className="flex justify-center py-20">
          <svg className="animate-spin h-8 w-8 text-primary-500" viewBox="0 0 24 24">
            <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
            <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
          </svg>
        </div>
      ) : isError ? (
        <div className="text-center py-20">
          <p className="text-red-500 text-lg">Error al cargar las solicitudes</p>
          <p className="text-gray-400 text-sm mt-1">Intenta recargar la página</p>
        </div>
      ) : feriantes.length === 0 ? (
        <div className="text-center py-20">
          <div className="text-5xl mb-4">
            {activeTab === 'pendiente' ? '📭' : activeTab === 'aprobado' ? '✅' : '🚫'}
          </div>
          <p className="text-gray-500 text-lg">
            No hay solicitudes {activeTab === 'pendiente' ? 'pendientes' : activeTab === 'aprobado' ? 'aprobadas' : 'rechazadas'}
          </p>
        </div>
      ) : (
        <div className="grid gap-4">
          {feriantes.map((f) => (
            <div
              key={f.id}
              className="card p-0 overflow-hidden hover:shadow-lg transition-shadow duration-300"
            >
              <div className="flex flex-col lg:flex-row">
                {/* Barra lateral de color */}
                <div className={`w-full lg:w-1.5 h-1.5 lg:h-auto flex-shrink-0 ${f.estado === 'pendiente' ? 'bg-amber-400' :
                  f.estado === 'aprobado' ? 'bg-green-400' : 'bg-red-400'
                  }`} />

                {/* Contenido */}
                <div className="flex-1 p-6">
                  <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-4">
                    {/* Info principal */}
                    <div className="flex-1">
                      <div className="flex items-center gap-3 mb-2">
                        <h3 className="text-lg font-semibold text-gray-800">
                          🏪 {f.nombre}
                        </h3>
                        <span className={`badge ${estadoBadgeClass[f.estado]}`}>
                          {f.estado.charAt(0).toUpperCase() + f.estado.slice(1)}
                        </span>
                      </div>

                      <div className="space-y-3 bg-gray-50 rounded-xl p-4 border border-gray-100 text-sm">
                        <div className="grid grid-cols-1 sm:grid-cols-2 gap-x-8 gap-y-2 text-sm">
                          <div className="flex items-center gap-2 text-gray-600">
                            <span className="text-gray-400">👤</span>
                            <span className="font-medium">Solicitante:</span>
                            {f.usuario?.nombre || 'N/A'}
                          </div>
                          <div className="flex items-center gap-2 text-gray-600">
                            <span className="text-gray-400">✉️</span>
                            <span className="font-medium">Email:</span>
                            {f.usuario?.email || 'N/A'}
                          </div>
                          <div className="flex items-center gap-2 text-gray-600">
                            <span className="text-gray-400">🏷️</span>
                            <span className="font-medium">Rubro:</span>
                            {f.rubro || 'Sin especificar'}
                          </div>
                          {/* 1. Comunas de las ubicaciones seleccionadas */}
                          <div className="text-gray-600">
                            <span className="font-semibold text-gray-700 block text-xs uppercase tracking-wider mb-1">📍 Comunas asociadas:</span>
                            {f.ubicaciones && f.ubicaciones.length > 0 ? (
                              <div className="flex flex-wrap gap-1 mt-1">
                                {[...new Set(f.ubicaciones.map(u => u.feria?.comuna?.nombre).filter(Boolean))].map((comunaNombre, idx) => (
                                  <span key={idx} className="bg-white border border-gray-200 px-2 py-0.5 rounded-md text-xs font-medium text-gray-800">
                                    {comunaNombre}
                                  </span>
                                ))}
                              </div>
                            ) : (
                              <span className="text-gray-400 italic text-xs">Ninguna ubicación seleccionada</span>
                            )}
                          </div>
                          {/* 2. Ferias solicitadas */}
                          <div className="text-gray-600">
                            <span className="font-semibold text-gray-700 block text-xs uppercase tracking-wider mb-1">🏪 Ferias:</span>
                            {f.ubicaciones && f.ubicaciones.length > 0 ? (
                              <div className="flex flex-wrap gap-1 mt-1">
                                {[...new Set(f.ubicaciones.map(u => u.feria?.nombre).filter(Boolean))].map((feriaNombre, idx) => (
                                  <span key={idx} className="bg-primary-50 border border-primary-100 text-primary-800 px-2 py-0.5 rounded-md text-xs font-semibold">
                                    {feriaNombre}
                                  </span>
                                ))}
                              </div>
                            ) : (
                              <span className="text-gray-400 italic text-xs">Sin ferias asociadas</span>
                            )}
                          </div>
                          {/* 3. Calles / Ubicaciones exactas */}
                          <div className="text-gray-600">
                            <span className="font-semibold text-gray-700 block text-xs uppercase tracking-wider mb-1"> 📍 Ubicaciones (Calles):</span>
                            {f.ubicaciones && f.ubicaciones.length > 0 ? (
                              <ul className="list-disc list-inside space-y-0.5 text-xs text-gray-600 mt-1 pl-1">
                                {f.ubicaciones.map((u) => (
                                  <li key={u.id} className="truncate">
                                    <strong className="text-gray-700">{u.callePrincipal}</strong>
                                    {u.calleInicio && ` (entre ${u.calleInicio} y ${u.calleTermino})`}
                                  </li>
                                ))}
                              </ul>
                            ) : (
                              <span className="text-gray-400 italic text-xs">Sin calles registradas</span>
                            )}
                          </div>
                          {f.telefono && (
                            <div className="flex items-center gap-2 text-gray-600">
                              <span className="text-gray-400">📞</span>
                              <span className="font-medium">Teléfono:</span>
                              {f.telefono}
                            </div>
                          )}
                          <div className="flex items-center gap-2 text-gray-600">
                            <span className="text-gray-400">📅</span>
                            <span className="font-medium">Fecha:</span>
                            {new Date(f.createdAt).toLocaleDateString('es-CL', {
                              day: 'numeric', month: 'short', year: 'numeric'
                            })}
                          </div>
                        </div>
                      </div>

                      {f.descripcion && (
                        <div className="mt-3 p-3 bg-gray-50 rounded-lg">
                          <p className="text-sm text-gray-600 italic">
                            "{f.descripcion}"
                          </p>
                        </div>
                      )}
                    </div>

                    {/* Acciones — solo para pendientes */}
                    {f.estado === 'pendiente' && (
                      <div className="flex sm:flex-col gap-2 flex-shrink-0">
                        <button
                          onClick={() => setConfirmAction({ id: f.id, action: 'aprobar', nombre: f.nombre })}
                          disabled={isPending}
                          className="flex-1 sm:flex-none inline-flex items-center justify-center gap-2 px-4 py-2 rounded-lg bg-green-500 text-white font-medium hover:bg-green-600 active:scale-95 transition-all duration-150 disabled:opacity-50 disabled:cursor-not-allowed text-sm"
                        >
                          ✅ Aprobar
                        </button>
                        <button
                          onClick={() => setConfirmAction({ id: f.id, action: 'rechazar', nombre: f.nombre })}
                          disabled={isPending}
                          className="flex-1 sm:flex-none inline-flex items-center justify-center gap-2 px-4 py-2 rounded-lg bg-red-500 text-white font-medium hover:bg-red-600 active:scale-95 transition-all duration-150 disabled:opacity-50 disabled:cursor-not-allowed text-sm"
                        >
                          ❌ Rechazar
                        </button>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </div>
          ))}
        </div>
      )}

      {/* Modal de confirmación */}
      {confirmAction && (
        <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
          {/* Overlay */}
          <div
            className="absolute inset-0 bg-black/50 backdrop-blur-sm"
            onClick={() => setConfirmAction(null)}
          />

          {/* Dialog */}
          <div className="relative bg-white rounded-2xl shadow-2xl p-6 w-full max-w-md animate-in zoom-in-95">
            <div className="text-center">
              <div className="text-5xl mb-4">
                {confirmAction.action === 'aprobar' ? '✅' : '⚠️'}
              </div>
              <h3 className="text-lg font-bold text-gray-800 mb-2">
                {confirmAction.action === 'aprobar' ? '¿Aprobar feriante?' : '¿Rechazar feriante?'}
              </h3>
              <p className="text-gray-500 text-sm mb-6">
                {confirmAction.action === 'aprobar'
                  ? `"${confirmAction.nombre}" podrá operar en la plataforma.`
                  : `"${confirmAction.nombre}" no podrá operar en la plataforma.`
                }
              </p>
              <div className="flex gap-3">
                <button
                  onClick={() => setConfirmAction(null)}
                  className="flex-1 px-4 py-2 rounded-lg border border-gray-300 text-gray-700 font-medium hover:bg-gray-50 transition-colors"
                >
                  Cancelar
                </button>
                <button
                  onClick={handleConfirm}
                  disabled={isPending}
                  className={`flex-1 px-4 py-2 rounded-lg text-white font-medium transition-all active:scale-95 disabled:opacity-50 ${confirmAction.action === 'aprobar'
                    ? 'bg-green-500 hover:bg-green-600'
                    : 'bg-red-500 hover:bg-red-600'
                    }`}
                >
                  {isPending ? 'Procesando...' : confirmAction.action === 'aprobar' ? 'Sí, aprobar' : 'Sí, rechazar'}
                </button>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}
