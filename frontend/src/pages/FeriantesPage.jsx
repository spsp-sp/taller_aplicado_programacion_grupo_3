import { useState, useEffect } from 'react'
import ferianteService from '../services/ferianteService'

export default function FeriantesPage() {
  const [feriantes, setFeriantes] = useState([])
  const [comunaFilter, setComunaFilter] = useState('')
  const [loading, setLoading] = useState(true)
  const [expandedId, setExpandedId] = useState(null)

  useEffect(() => {
    fetchFeriantes()
  }, [comunaFilter])

  const fetchFeriantes = async () => {
    try {
      setLoading(true)
      const data = await ferianteService.getFeriantes({ comuna: comunaFilter })
      setFeriantes(data)
    } catch (err) {
      console.error('Error al cargar feriantes:', err)
    } finally {
      setLoading(false)
    }
  }

  const toggleExpand = (id) => {
    setExpandedId(expandedId === id ? null : id)
  }

  // Datos de ejemplo para comunas, se puede reemplazar por una API de comunas o por base de datos
  const COMUNAS = [
    'Cerrillos', 'Cerro Navia', 'Conchalí', 'El Bosque', 'Estación Central', 'Huechuraba',
    'Independencia', 'La Cisterna', 'La Florida', 'La Granja', 'La Pintana', 'La Reina',
    'Las Condes', 'Lo Barnechea', 'Lo Espejo', 'Lo Prado', 'Macul', 'Maipú', 'Ñuñoa',
    'Pedro Aguirre Cerda', 'Peñalolén', 'Providencia', 'Pudahuel', 'Quilicura',
    'Quinta Normal', 'Recoleta', 'Renca', 'San Joaquín', 'San Miguel', 'San Ramón',
    'Santiago', 'Vitacura', 'Puente Alto', 'San Bernardo'
  ].sort()

  return (
    <div className="max-w-4xl mx-auto px-4 py-10">
      <header className="mb-10 text-center">
        <h1 className="text-4xl font-extrabold text-gray-900 mb-4 bg-clip-text text-transparent bg-gradient-to-r from-primary-600 to-secondary-500">
          Directorio de Feriantes
        </h1>
        <p className="text-gray-600 max-w-2xl mx-auto">
          Encuentra a tus feriantes favoritos y conoce dónde y cuándo se ubican para que nunca te quedes sin tus productos frescos.
        </p>
      </header>

      {/* Filtros */}
      <div className="bg-white p-6 rounded-2xl shadow-lg mb-8 border border-gray-100">
        <div className="flex flex-col md:flex-row gap-4 items-end">
          <div className="flex-1 w-full">
            <label htmlFor="comuna" className="block text-sm font-semibold text-gray-700 mb-2">
              Seleccionar Comuna
            </label>
            <select
              id="comuna"
              className="input-field py-3 text-base"
              value={comunaFilter}
              onChange={(e) => setComunaFilter(e.target.value)}
            >
              <option value="">Todas las comunas</option>
              {COMUNAS.map(comuna => (
                <option key={comuna} value={comuna}>{comuna}</option>
              ))}
            </select>
          </div>
          <button
            onClick={fetchFeriantes}
            className="btn-primary w-full md:w-auto h-[46px] px-8"
          >
            Filtrar
          </button>
        </div>
      </div>

      {/* Lista de Feriantes */}
      <div className="space-y-4">
        {loading ? (
          <div className="text-center py-20">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto"></div>
            <p className="mt-4 text-gray-500">Cargando feriantes...</p>
          </div>
        ) : feriantes.length > 0 ? (
          feriantes.map((f) => (
            <div key={f.id} className={`card overflow-hidden transition-all duration-300 ${expandedId === f.id ? 'ring-2 ring-primary-500 border-transparent shadow-md' : ''}`}>
              <div className="flex justify-between items-center">
                <div>
                  <h3 className="text-xl font-bold text-gray-800">{f.nombre}</h3>
                  <div className="flex items-center gap-2 mt-1">
                    <span className="text-sm font-medium text-primary-600 bg-primary-50 px-2 py-0.5 rounded">
                      {f.dias || 'Días no especificados'}
                    </span>
                    <span className="text-sm text-gray-500">•</span>
                    <span className="text-sm text-gray-500">{f.comuna?.nombre || 'Comuna no especificada'}</span>
                  </div>
                </div>
                <button
                  onClick={() => toggleExpand(f.id)}
                  className={`btn-outline border-none bg-gray-50 hover:bg-gray-100 ${expandedId === f.id ? 'rotate-180' : ''}`}
                >
                  <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                    <path fillRule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clipRule="evenodd" />
                  </svg>
                </button>
              </div>

              {expandedId === f.id && (
                <div className="mt-6 pt-6 border-t border-gray-100 animate-fadeIn">
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div>
                      <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-2">Información de Ferias</h4>
                      {f.ubicaciones && f.ubicaciones.length > 0 ? (
                        <ul className="space-y-3">
                          {f.ubicaciones.map(ubi => (
                            <li key={ubi.id} className="text-sm">
                              <span className="font-bold text-gray-700 block">{ubi.feria?.nombre || 'Feria'}</span>
                              <span className="text-gray-500">
                                {ubi.callePrincipal}
                                {ubi.calleInicio && ` (e/ ${ubi.calleInicio} y ${ubi.calleTermino})`}
                              </span>
                            </li>
                          ))}
                        </ul>
                      ) : (
                        <p className="text-sm text-gray-500 italic">No hay ferias asociadas.</p>
                      )}
                    </div>
                    <div className="space-y-4">
                      <div>
                        <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-1">Categoría / Rubro</h4>
                        <p className="text-gray-700 font-medium">{f.rubro || 'General'}</p>
                      </div>
                      <div>
                        <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-1">Contacto</h4>
                        <p className="text-gray-700 font-medium flex items-center gap-2">
                          <svg xmlns="http://www.w3.org/2000/svg" className="h-4 w-4 text-primary-500" viewBox="0 0 20 20" fill="currentColor">
                            <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z" />
                          </svg>
                          {f.telefono || 'Sin teléfono registrado'}
                        </p>
                      </div>
                      <div>
                        <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-1">Descripción</h4>
                        <p className="text-sm text-gray-600 leading-relaxed">
                          {f.descripcion || 'Sin descripción disponible.'}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              )}
            </div>
          ))
        ) : (
          <div className="text-center py-20 bg-gray-50 rounded-2xl border-2 border-dashed border-gray-200">
            <svg xmlns="http://www.w3.org/2000/svg" className="h-12 w-12 text-gray-300 mx-auto mb-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 01-9-3.5" />
            </svg>
            <p className="text-gray-500">No se encontraron feriantes en esta comuna.</p>
          </div>
        )}
      </div>
    </div>
  )
}
