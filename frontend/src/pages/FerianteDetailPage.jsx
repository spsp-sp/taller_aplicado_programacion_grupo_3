import { useParams, Link } from 'react-router-dom'
import { useState, useEffect } from 'react'
import { Store, MapPin, Calendar, Phone, Info, ArrowLeft, Mail } from 'lucide-react'
import ferianteService from '../services/ferianteService'

export default function FerianteDetailPage() {
  const { id } = useParams()
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
      <div className="max-w-4xl mx-auto px-4 py-20 text-center">
        <h2 className="text-2xl font-bold text-red-600 mb-2">¡Ups! Algo salió mal</h2>
        <p className="text-gray-600 mb-6">{error || 'Feriante no encontrado.'}</p>
        <Link to="/feriantes" className="bg-primary-600 text-white px-6 py-2 rounded-lg hover:bg-primary-700 transition-colors">
          Volver al listado
        </Link>
      </div>
    )
  }

  return (
    <div className="max-w-4xl mx-auto px-4 py-8">
      {/* Botón Volver */}
      <Link
        to="/feriantes"
        className="inline-flex items-center gap-2 text-gray-600 hover:text-primary-600 font-semibold mb-6 transition-colors duration-200"
      >
        <ArrowLeft size={16} />
        <span>Volver a Feriantes</span>
      </Link>

      {/* Cabecera del Feriante */}
      <div className="bg-white shadow-xl rounded-3xl border border-gray-100 p-6 md:p-8 mb-8 relative overflow-hidden">
        {/* Adorno decorativo de fondo */}
        <div className="absolute top-0 right-0 w-32 h-32 bg-primary-50 rounded-bl-full -z-10 opacity-60" />

        <div className="flex flex-col md:flex-row md:items-center justify-between gap-6">
          <div className="flex items-center gap-5">
            {/* Avatar premium con inicial */}
            <div className="w-20 h-20 rounded-2xl bg-gradient-to-tr from-primary-500 to-primary-700 flex items-center justify-center text-white font-extrabold text-3xl shadow-lg shadow-primary-100 transform hover:scale-105 transition-transform duration-300">
              {feriante.nombre ? feriante.nombre.charAt(0).toUpperCase() : '?'}
            </div>
            <div>
              <div className="flex flex-wrap items-center gap-3 mb-1.5">
                <h1 className="text-3xl font-extrabold text-gray-900 leading-tight">{feriante.nombre}</h1>
                {feriante.rubro && (
                  <span className="px-3 py-1 bg-primary-50 text-primary-700 text-xs font-bold rounded-full uppercase tracking-wider">
                    {feriante.rubro}
                  </span>
                )}
              </div>
              <div className="space-y-1">
                <p className="text-gray-500 flex items-center gap-1.5 text-sm">
                  <MapPin size={16} className="text-primary-500" />
                  <span>Comuna: {feriante.comuna || 'No especificada'}</span>
                </p>
                {feriante.dias && (
                  <p className="text-gray-500 flex items-center gap-1.5 text-sm">
                    <Calendar size={16} className="text-primary-500" />
                    <span>Días de atención: {feriante.dias}</span>
                  </p>
                )}
              </div>
            </div>
          </div>
        </div>

        {/* Descripción */}
        <div className="border-t border-gray-100 mt-6 pt-6">
          <h3 className="text-xs font-bold text-gray-400 uppercase tracking-widest mb-3 flex items-center gap-1.5">
            <Info size={14} className="text-gray-400" />
            <span>Sobre mí</span>
          </h3>
          <p className="text-gray-700 leading-relaxed text-base italic bg-gray-50 p-4 rounded-2xl border border-gray-100 font-medium">
            {feriante.descripcion || 'Este feriante aún no ha ingresado una descripción sobre sus excelentes productos.'}
          </p>
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
        {/* Columna Izquierda: Ferias Asociadas */}
        <div className="md:col-span-2">
          <div className="flex items-center gap-2 mb-6">
            <Store className="text-primary-600" />
            <h2 className="text-2xl font-bold text-gray-800">Ferias donde atiende</h2>
          </div>

          {feriante.ferias && feriante.ferias.length > 0 ? (
            <div className="grid grid-cols-1 gap-4">
              {feriante.ferias.map((feria) => (
                <Link
                  key={feria.id}
                  to={`/ferias/${feria.id}`}
                  className="group bg-white border border-gray-150 rounded-2xl p-5 flex justify-between items-center hover:border-primary-500 hover:shadow-lg transition-all duration-300 transform hover:-translate-y-0.5"
                >
                  <div className="flex-1">
                    <h3 className="font-bold text-gray-900 group-hover:text-primary-600 text-lg transition-colors duration-150">
                      {feria.nombre}
                    </h3>
                    <p className="text-sm text-gray-500 flex items-center gap-1 mt-1">
                      <MapPin size={14} />
                      {feria.direccion}
                    </p>
                    <span className="inline-block px-2 py-0.5 bg-gray-100 text-gray-600 text-[11px] font-semibold uppercase tracking-wider rounded mt-2.5">
                      {feria.tipo}
                    </span>
                  </div>
                  <div className="w-10 h-10 rounded-full bg-gray-50 group-hover:bg-primary-50 text-gray-400 group-hover:text-primary-600 flex items-center justify-center transition-all duration-200">
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 transform group-hover:translate-x-0.5 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.2} d="M9 5l7 7-7 7" />
                    </svg>
                  </div>
                </Link>
              ))}
            </div>
          ) : (
            <div className="bg-gray-50 border-2 border-dashed rounded-3xl p-8 text-center border-gray-200">
              <Store className="h-10 w-10 text-gray-300 mx-auto mb-3" />
              <p className="text-gray-500 text-sm">Este feriante no tiene ferias asociadas registradas.</p>
            </div>
          )}
        </div>

        {/* Columna Derecha: Información de Contacto */}
        <div className="space-y-6">
          <div className="bg-white border border-gray-150 rounded-3xl p-6 shadow-sm">
            <h3 className="font-bold text-gray-900 text-lg mb-4 flex items-center gap-2">
              <Phone size={18} className="text-primary-600" />
              <span>Contacto</span>
            </h3>
            
            <div className="space-y-4">
              <div>
                <p className="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-1">Teléfono</p>
                {feriante.telefono ? (
                  <a
                    href={`tel:${feriante.telefono}`}
                    className="text-primary-600 hover:text-primary-700 font-bold flex items-center gap-2 hover:underline transition-all text-base"
                  >
                    <span>{feriante.telefono}</span>
                  </a>
                ) : (
                  <p className="text-sm text-gray-500 italic">No registrado</p>
                )}
              </div>

              {feriante.usuario?.email && (
                <div>
                  <p className="text-xs font-semibold text-gray-400 uppercase tracking-wider mb-1">Correo Electrónico</p>
                  <a
                    href={`mailto:${feriante.usuario.email}`}
                    className="text-gray-700 hover:text-primary-600 flex items-center gap-1.5 text-sm break-all font-medium transition-colors"
                  >
                    <Mail size={14} className="text-gray-400" />
                    <span>{feriante.usuario.email}</span>
                  </a>
                </div>
              )}
            </div>

            {/* CTA de WhatsApp si es número de teléfono */}
            {feriante.telefono && (
              <a
                href={`https://wa.me/${feriante.telefono.replace(/\s+/g, '').replace('+', '')}`}
                target="_blank"
                rel="noreferrer"
                className="mt-6 w-full flex items-center justify-center gap-2 bg-[#25D366] hover:bg-[#20ba5a] active:scale-95 text-white font-bold py-3 rounded-2xl shadow-sm hover:shadow-md transition-all duration-200 text-sm"
              >
                <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 fill-current" viewBox="0 0 24 24">
                  <path d="M.057 24l1.687-6.163c-1.041-1.804-1.588-3.849-1.587-5.946C.06 5.348 5.397.01 12.008.01c3.202.001 6.212 1.246 8.477 3.514 2.266 2.268 3.507 5.28 3.505 8.484-.004 6.657-5.34 11.997-11.953 11.997-2.005-.001-3.973-.502-5.731-1.456L0 24zm6.59-4.846c1.6.95 3.188 1.449 4.825 1.451 5.436 0 9.86-4.37 9.864-9.799.002-2.63-1.023-5.101-2.885-6.965C16.59 1.977 14.113.953 11.488.953c-5.43 0-9.85 4.37-9.854 9.799 0 1.706.463 3.37 1.34 4.846l-.997 3.64 3.733-.966zM17.18 14.77c-.3-.15-1.785-.88-2.053-.978-.268-.1-.463-.15-.658.15-.195.3-.755.95-.927 1.15-.172.2-.344.22-.644.07-1.129-.566-1.928-1.01-2.714-2.35-.22-.38.22-.35.63-.15.38.18.5.34.64.07.15-.15.6-.7.78-.95.18-.25.09-.47-.04-.62-.13-.15-1.05-2.53-1.44-3.46-.38-.91-.77-.79-.99-.8-1.1-.02-1.92-.02-2.73.18-.81.2-2.12.78-2.68 1.83-.56 1.06-.08 3.12 1.04 4.54 1.12 1.42 2.87 4.15 6.07 5.3 1.94.7 3.32.96 4.37.75.9-.17 2.05-.84 2.38-1.63.33-.78.33-1.45.24-1.6-.1-.15-.3-.25-.6-.4z"/>
                </svg>
                <span>Enviar WhatsApp</span>
              </a>
            )}
          </div>

          <div className="bg-gradient-to-br from-primary-50 to-primary-100/50 border border-primary-100 rounded-3xl p-6 text-gray-800">
            <h3 className="font-bold text-primary-800 mb-2.5 text-base flex items-center gap-1.5">
              <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5 text-primary-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
              <span>¡Apoya lo Local!</span>
            </h3>
            <p className="text-gray-600 text-xs leading-relaxed">
              Al comprar directamente a feriantes locales a través de <strong>ConYapa</strong>, estás apoyando la economía de tu comuna y asegurando alimentos más frescos y saludables para tu mesa.
            </p>
          </div>
        </div>
      </div>
    </div>
  )
}
