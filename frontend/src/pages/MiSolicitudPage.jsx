import { useQuery } from '@tanstack/react-query'
import { Link } from 'react-router-dom'
import ferianteService from '@services/ferianteService'

// ─── Helpers ────────────────────────────────────────────────────────────────

const estadoBadgeClass = {
  pendiente: 'bg-amber-100 text-amber-800',
  aprobado: 'bg-green-100 text-green-800',
  rechazado: 'bg-red-100 text-red-800',
}

const estadoBarClass = {
  pendiente: 'bg-amber-400',
  aprobado: 'bg-green-400',
  rechazado: 'bg-red-400',
}

const estadoInfo = {
  pendiente: {
    icon: '⏳',
    title: 'Tu solicitud está en revisión',
    desc: 'Un administrador revisará tu información y te notificaremos cuando se tome una decisión.',
    color: 'amber',
  },
  aprobado: {
    icon: '🎉',
    title: '¡Tu solicitud fue aprobada!',
    desc: 'Ya puedes operar en la plataforma ConYapa. Los clientes pueden encontrarte en el mapa.',
    color: 'green',
  },
  rechazado: {
    icon: '😔',
    title: 'Tu solicitud fue rechazada',
    desc: 'Lamentablemente tu solicitud no fue aprobada. Puedes contactar al administrador para más información.',
    color: 'red',
  },
}

// ─── Componente ─────────────────────────────────────────────────────────────

export default function MiSolicitudPage() {
  const { data: solicitud, isLoading, isError } = useQuery({
    queryKey: ['mi-solicitud'],
    queryFn: ferianteService.getMiSolicitud,
    staleTime: 0,             // nunca usar cache, siempre pedir datos frescos
    refetchOnWindowFocus: true, // actualiza al volver a la pestaña
  })

  // ── Loading ────────────────────────────────────────────────────────────────
  if (isLoading) {
    return (
      <div className="flex justify-center items-center py-32">
        <svg className="animate-spin h-10 w-10 text-primary-500" viewBox="0 0 24 24">
          <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
          <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
        </svg>
      </div>
    )
  }

  // ── Error ──────────────────────────────────────────────────────────────────
  if (isError) {
    return (
      <div className="max-w-2xl mx-auto px-4 py-20 text-center">
        <div className="text-5xl mb-4">⚠️</div>
        <p className="text-red-500 text-lg font-medium">Error al cargar tu solicitud</p>
        <p className="text-gray-400 text-sm mt-1">Intenta recargar la página</p>
      </div>
    )
  }

  // ── Sin solicitud → CTA para crear una ────────────────────────────────────
  if (!solicitud) {
    return (
      <div className="max-w-2xl mx-auto px-4 py-16">
        <div className="text-center mb-10">
          <h1 className="text-2xl font-bold text-gray-800">Mi solicitud de feriante</h1>
          <p className="text-gray-500 mt-1 text-sm">Consulta el estado de tu registro en ConYapa</p>
        </div>

        <div className="card p-0 overflow-hidden">
          <div className="bg-gradient-to-r from-primary-600 to-secondary-500 px-8 py-8 text-white text-center">
            <div className="text-6xl mb-4">🏪</div>
            <h2 className="text-xl font-bold">Aún no tienes una solicitud</h2>
            <p className="text-white/80 text-sm mt-2">
              ¿Eres feriante? Regístrate para que los clientes puedan encontrarte en el mapa.
            </p>
          </div>

          <div className="p-8 flex flex-col items-center gap-6">
            <ul className="text-sm text-gray-600 space-y-3 w-full max-w-xs">
              <li className="flex items-start gap-3">
                <span className="text-green-500 text-lg leading-none">✅</span>
                <span>Aparece en el <strong>mapa interactivo</strong> de ferias</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-green-500 text-lg leading-none">✅</span>
                <span>Los clientes podrán <strong>encontrar tu puesto</strong> fácilmente</span>
              </li>
              <li className="flex items-start gap-3">
                <span className="text-green-500 text-lg leading-none">✅</span>
                <span>Proceso de aprobación <strong>rápido y sencillo</strong></span>
              </li>
            </ul>

            <Link
              to="/registro-feriante"
              className="btn-primary w-full max-w-xs py-3 text-center text-base shadow-md shadow-primary-500/20"
            >
              📩 Enviar solicitud de feriante
            </Link>
          </div>
        </div>
      </div>
    )
  }

  // ── Con solicitud → mostrar detalle ───────────────────────────────────────
  const info = estadoInfo[solicitud.estado] || estadoInfo.pendiente

  return (
    <div className="max-w-3xl mx-auto px-4 py-10">
      {/* Header */}
      <div className="mb-8">
        <h1 className="text-2xl font-bold text-gray-800">Mi solicitud de feriante</h1>
        <p className="text-gray-500 mt-1 text-sm">Consulta el estado de tu registro en ConYapa</p>
      </div>

      {/* Banner de estado */}
      <div className={`rounded-2xl p-6 mb-6 flex items-start gap-4 ${
        solicitud.estado === 'aprobado'
          ? 'bg-green-50 border border-green-200'
          : solicitud.estado === 'rechazado'
          ? 'bg-red-50 border border-red-200'
          : 'bg-amber-50 border border-amber-200'
      }`}>
        <span className="text-4xl flex-shrink-0">{info.icon}</span>
        <div>
          <p className={`font-bold text-lg ${
            solicitud.estado === 'aprobado'
              ? 'text-green-800'
              : solicitud.estado === 'rechazado'
              ? 'text-red-800'
              : 'text-amber-800'
          }`}>
            {info.title}
          </p>
          <p className={`text-sm mt-1 ${
            solicitud.estado === 'aprobado'
              ? 'text-green-700'
              : solicitud.estado === 'rechazado'
              ? 'text-red-700'
              : 'text-amber-700'
          }`}>
            {info.desc}
          </p>
        </div>
      </div>

      {/* Tarjeta de detalle — mismo diseño que la vista admin */}
      <div className="card p-0 overflow-hidden">
        <div className="flex flex-col lg:flex-row">
          {/* Barra lateral de color */}
          <div className={`w-full lg:w-1.5 h-1.5 lg:h-auto flex-shrink-0 ${estadoBarClass[solicitud.estado]}`} />

          {/* Contenido */}
          <div className="flex-1 p-6">
            <div className="flex items-center gap-3 mb-4">
              <h2 className="text-xl font-semibold text-gray-800">🏪 {solicitud.nombre}</h2>
              <span className={`badge ${estadoBadgeClass[solicitud.estado]}`}>
                {solicitud.estado.charAt(0).toUpperCase() + solicitud.estado.slice(1)}
              </span>
            </div>

            <div className="space-y-1 bg-gray-50 rounded-xl p-4 border border-gray-100 text-sm">
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-x-8 gap-y-3">

                {/* Rubro */}
                <div className="flex items-center gap-2 text-gray-600">
                  <span className="text-gray-400">🏷️</span>
                  <span className="font-medium">Rubro:</span>
                  {solicitud.rubro || 'Sin especificar'}
                </div>

                {/* Teléfono */}
                {solicitud.telefono && (
                  <div className="flex items-center gap-2 text-gray-600">
                    <span className="text-gray-400">📞</span>
                    <span className="font-medium">Teléfono:</span>
                    {solicitud.telefono}
                  </div>
                )}

                {/* Fecha */}
                <div className="flex items-center gap-2 text-gray-600">
                  <span className="text-gray-400">📅</span>
                  <span className="font-medium">Enviada el:</span>
                  {new Date(solicitud.createdAt).toLocaleDateString('es-CL', {
                    day: 'numeric', month: 'long', year: 'numeric'
                  })}
                </div>

                {/* Comunas */}
                <div className="text-gray-600">
                  <span className="font-semibold text-gray-700 block text-xs uppercase tracking-wider mb-1">
                    📍 Comunas asociadas:
                  </span>
                  {solicitud.ubicaciones && solicitud.ubicaciones.length > 0 ? (
                    <div className="flex flex-wrap gap-1 mt-1">
                      {[...new Set(
                        solicitud.ubicaciones
                          .map(u => u.feria?.comuna?.nombre)
                          .filter(Boolean)
                      )].map((comunaNombre, idx) => (
                        <span
                          key={idx}
                          className="bg-white border border-gray-200 px-2 py-0.5 rounded-md text-xs font-medium text-gray-800"
                        >
                          {comunaNombre}
                        </span>
                      ))}
                    </div>
                  ) : (
                    <span className="text-gray-400 italic text-xs">Ninguna ubicación seleccionada</span>
                  )}
                </div>

                {/* Ferias */}
                <div className="text-gray-600">
                  <span className="font-semibold text-gray-700 block text-xs uppercase tracking-wider mb-1">
                    🏪 Ferias:
                  </span>
                  {solicitud.ubicaciones && solicitud.ubicaciones.length > 0 ? (
                    <div className="flex flex-wrap gap-1 mt-1">
                      {[...new Set(
                        solicitud.ubicaciones
                          .map(u => u.feria?.nombre)
                          .filter(Boolean)
                      )].map((feriaNombre, idx) => (
                        <span
                          key={idx}
                          className="bg-primary-50 border border-primary-100 text-primary-800 px-2 py-0.5 rounded-md text-xs font-semibold"
                        >
                          {feriaNombre}
                        </span>
                      ))}
                    </div>
                  ) : (
                    <span className="text-gray-400 italic text-xs">Sin ferias asociadas</span>
                  )}
                </div>

                {/* Ubicaciones / Calles */}
                <div className="text-gray-600 sm:col-span-2">
                  <span className="font-semibold text-gray-700 block text-xs uppercase tracking-wider mb-1">
                    📍 Ubicaciones (Calles):
                  </span>
                  {solicitud.ubicaciones && solicitud.ubicaciones.length > 0 ? (
                    <ul className="list-disc list-inside space-y-0.5 text-xs text-gray-600 mt-1 pl-1">
                      {solicitud.ubicaciones.map((u) => (
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
              </div>
            </div>

            {/* Descripción */}
            {solicitud.descripcion && (
              <div className="mt-4 p-3 bg-gray-50 rounded-lg border border-gray-100">
                <p className="text-sm text-gray-600 italic">"{solicitud.descripcion}"</p>
              </div>
            )}
          </div>
        </div>
      </div>

      {/* Footer informativo */}
      <div className="mt-6 bg-blue-50 border border-blue-100 rounded-xl p-4 flex gap-3 items-start">
        <span className="text-blue-500 text-xl flex-shrink-0 mt-0.5">ℹ️</span>
        <p className="text-sm text-blue-800">
          {solicitud.estado === 'pendiente'
            ? 'Tu solicitud está siendo revisada. Vuelve pronto para ver si fue aprobada.'
            : solicitud.estado === 'aprobado'
            ? 'Ya apareces en el mapa y los clientes pueden ver tu puesto.'
            : 'Si tienes dudas sobre el rechazo, puedes contactar al administrador de la plataforma.'
          }
        </p>
      </div>
    </div>
  )
}
