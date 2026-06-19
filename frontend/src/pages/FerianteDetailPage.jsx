import { useParams, Link, useNavigate } from 'react-router-dom'
import { useState, useEffect } from 'react'
import { Store, MapPin, Calendar, Phone, Info, ArrowLeft, ArrowRight } from 'lucide-react'
import ferianteService from '../services/ferianteService'

export default function FerianteDetailPage() {
  const { id } = useParams()
  const navigate = useNavigate()
  const [feriante, setFeriante] = useState(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState(null)

  useEffect(() => {
    async function loadFeriante() {
      try {
        setLoading(true)
        const data = await ferianteService.getFerianteById(id)
        setFeriante(data)
      } catch (err) {
        console.error('Error al cargar detalle del feriante:', err)
        setError('No pudimos encontrar al feriante que buscas.')
      } finally {
        setLoading(false)
      }
    }
    if (id) {
      loadFeriante()
    }
  }, [id])

  if (loading) {
    return (
      <div className="flex flex-col items-center justify-center py-20">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mb-4"></div>
        <p className="text-gray-500">Cargando detalles del feriante...</p>
      </div>
    )
  }

  if (error || !feriante) {
    return (
      <div className="max-w-md mx-auto text-center py-20 px-4">
        <div className="bg-red-50 text-red-700 rounded-2xl p-6 border border-red-100 shadow-sm">
          <p className="font-semibold mb-4">{error || 'Feriante no encontrado'}</p>
          <button onClick={() => navigate(-1)} className="inline-flex items-center gap-2 text-sm font-bold text-red-800 hover:underline">
            <ArrowLeft size={16} /> Volver atrás
          </button>
        </div>
      </div>
    )
  }

  // Obtener el nombre de la comuna de forma segura
  const nombreComuna = typeof feriante.comuna === 'object' && feriante.comuna !== null
    ? feriante.comuna.nombre
    : (feriante.comuna || 'No especificada');

  return (
    <div className="max-w-4xl mx-auto px-4 py-8">
      {/* Botón superior dinámico */}
      <button
        onClick={() => navigate(-1)}
        className="inline-flex items-center gap-2 text-sm text-gray-500 hover:text-gray-800 mb-6 font-medium transition-colors"
      >
        <ArrowLeft size={16} />
        <span>Volver a Feriantes</span>
      </button>

      {/* Tarjeta Principal de Perfil */}
      <div className="bg-white rounded-3xl border border-gray-100 shadow-sm p-6 md:p-8 mb-8">
        <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-4 border-b border-gray-100 pb-6 mb-6">
          <div>
            <span className="inline-block px-3 py-1 bg-primary-50 text-primary-700 text-xs font-bold rounded-lg mb-2 uppercase border border-primary-100">
              {feriante.rubro || 'General'}
            </span>
            <h1 className="text-3xl font-extrabold text-gray-900 tracking-tight">{feriante.nombre}</h1>
          </div>

          {feriante.telefono && (
            <a
              href={`https://wa.me/${feriante.telefono.replace(/[^0-9]/g, '')}`}
              target="_blank"
              rel="noopener noreferrer"
              className="w-full md:w-auto inline-flex items-center justify-center gap-2 px-5 py-3 bg-green-600 hover:bg-green-700 text-white font-bold rounded-2xl shadow-sm transition-all text-sm"
            >
              <Phone size={16} />
              <span>Contactar por WhatsApp</span>
            </a>
          )}
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          {/* Información de Contacto */}
          <div className="md:col-span-1 space-y-4 bg-gray-50/50 rounded-2xl p-5 border border-gray-100">
            <h3 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-2">Información del Feriante</h3>

            <div className="text-gray-600 flex items-center gap-3 text-sm">
              <MapPin size={18} className="text-gray-400 shrink-0" />
              <span>Comuna: <strong className="text-gray-800 font-semibold">{nombreComuna}</strong></span>
            </div>

            {feriante.telefono && (
              <div className="text-gray-600 flex items-center gap-3 text-sm">
                <Phone size={18} className="text-gray-400 shrink-0" />
                <span>Teléfono: <strong className="text-gray-800 font-semibold">{feriante.telefono}</strong></span>
              </div>
            )}

            <div className="text-gray-600 flex items-center gap-3 text-sm">
              <Info size={18} className="text-gray-400 shrink-0" />
              <span>Estado: <span className="capitalize font-semibold text-green-700 bg-green-50 px-2 py-0.5 rounded-md text-xs border border-green-100">{feriante.estado}</span></span>
            </div>
          </div>

          {/* Biografía / Descripción */}
          <div className="md:col-span-2 flex flex-col justify-between">
            <div>
              <h3 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-3">Sobre nosotros</h3>
              <p className="text-gray-600 text-sm leading-relaxed whitespace-pre-line">
                {feriante.descripcion || 'Este feriante aún no ha añadido una descripción sobre sus productos o su historia.'}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Puestos e itinerarios donde trabaja */}
      <div className="bg-white rounded-3xl border border-gray-100 shadow-sm p-6 md:p-8">
        <h2 className="text-xl font-bold text-gray-800 mb-6 flex items-center gap-2">
          <Store className="text-primary-600" size={22} />
          <span>¿Dónde encontrar este puesto?</span>
        </h2>

        {(!feriante.ubicaciones || feriante.ubicaciones.length === 0) ? (
          <p className="text-gray-500 text-sm italic py-4">No hay ubicaciones registradas para este feriante actualmente.</p>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {feriante.ubicaciones.map((ubi) => (
              /* RESTAURACIÓN: La tarjeta completa es un Link con efecto hover verde */
              <Link
                key={ubi.id}
                to={`/ferias/${ubi.feriaId}`}
                className="group border border-gray-100 rounded-2xl p-5 bg-gradient-to-br from-white to-gray-50/30 shadow-2xs hover:border-primary-300 hover:shadow-md hover:bg-primary-50/50 transition-all duration-300 flex flex-col justify-between"
              >
                <div>
                  <div className="flex justify-between items-start gap-2 mb-1">
                    <h4 className="font-bold text-gray-800 flex items-center gap-1.5 text-base transition-colors group-hover:text-primary-800">
                      <MapPin size={16} className="text-primary-500" />
                      {ubi.callePrincipal}
                    </h4>
                    {/* Flechita indicadora en el hover */}
                    <ArrowRight size={18} className="text-primary-400 opacity-0 group-hover:opacity-100 transition-all group-hover:translate-x-1" />
                  </div>

                  <p className="text-xs text-gray-500 mb-4">
                    Entre {ubi.calleInicio || 'inicio'} y {ubi.calleTermino || 'fin'}
                  </p>

                  {ubi.diasFeria && ubi.diasFeria.length > 0 && (
                    <div className="space-y-2 border-t border-gray-100/70 pt-3">
                      <span className="text-[10px] font-bold text-gray-400 uppercase block tracking-wider">Días y Horarios:</span>
                      <div className="flex flex-wrap gap-1.5">
                        {ubi.diasFeria.map((dia) => (
                          <span key={dia.id} className="px-2.5 py-1 bg-white border border-gray-200 rounded-lg text-xs font-medium text-gray-700 shadow-3xs capitalize flex items-center gap-1 transition-colors group-hover:border-primary-100">
                            <Calendar size={12} className="text-gray-400" />
                            {dia.diaSemana} ({dia.horaInicio ? dia.horaInicio.slice(0, 5) : ''} - {dia.horaFin ? dia.horaFin.slice(0, 5) : ''})
                          </span>
                        ))}
                      </div>
                    </div>
                  )}
                </div>

                {/* Texto sutil al final indicando la acción */}
                <div className="mt-4 pt-3 border-t border-gray-100/60 flex justify-end">
                  <span className="text-xs font-bold text-primary-600 opacity-70 group-hover:opacity-100 transition-opacity">
                    Ver toda la feria →
                  </span>
                </div>
              </Link>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}