import { useState, useEffect } from 'react'
import { MapPin, Clock, Star, Phone, Info, ChevronDown } from 'lucide-react'
import { useFerias } from '../hooks/useFerias'

export default function FeriasPage() {
    const [tipoFilter, setTipoFilter] = useState('')
    const [expandedId, setExpandedId] = useState(null)

    const { data: ferias = [], isLoading, refetch } = useFerias({ tipo: tipoFilter })

    const toggleExpand = (id) => {
        setExpandedId(expandedId === id ? null : id)
    }

    const TIPOS_FERIA = [
        { value: 'libre', label: 'Feria Libre' },
        { value: 'municipal', label: 'Feria Municipal' },
        { value: 'organica', label: 'Feria Orgánica' },
        { value: 'artesanal', label: 'Feria Artesanal' }
    ]

    const formatHorarios = (horarios) => {
        if (!horarios || horarios.length === 0) return 'Horarios no disponibles'

        // Agrupar días
        const dias = horarios.map(h => {
            const dia = h.diaSemana.charAt(0).toUpperCase() + h.diaSemana.slice(1)
            return dia
        })

        return dias.join(', ')
    }

    return (
        <div className="max-w-4xl mx-auto px-4 py-10">
            <header className="mb-10 text-center">
                <h1 className="text-4xl font-extrabold text-gray-900 mb-4 bg-clip-text text-transparent bg-gradient-to-r from-primary-600 to-secondary-500">
                    Directorio de Ferias
                </h1>
                <p className="text-gray-600 max-w-2xl mx-auto">
                    Encuentra las ferias más cercanas a tu ubicación, conoce sus horarios y descubre los mejores productos locales.
                </p>
            </header>

            {/* Filtros */}
            <div className="bg-white p-6 rounded-2xl shadow-lg mb-8 border border-gray-100">
                <div className="flex flex-col md:flex-row gap-4 items-end">
                    <div className="flex-1 w-full">
                        <label htmlFor="tipo" className="block text-sm font-semibold text-gray-700 mb-2">
                            Tipo de Feria
                        </label>
                        <select
                            id="tipo"
                            className="w-full px-3 py-2 border border-gray-300 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-primary-500 focus:border-transparent transition-all duration-150"
                            value={tipoFilter}
                            onChange={(e) => setTipoFilter(e.target.value)}
                        >
                            <option value="">Todos los tipos</option>
                            {TIPOS_FERIA.map(tipo => (
                                <option key={tipo.value} value={tipo.value}>{tipo.label}</option>
                            ))}
                        </select>
                    </div>
                    <button
                        onClick={() => refetch()}
                        className="btn-primary w-full md:w-auto h-[42px] px-8"
                    >
                        Filtrar
                    </button>
                </div>
            </div>

            {/* Lista de Ferias */}
            <div className="space-y-4">
                {isLoading ? (
                    <div className="text-center py-20">
                        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600 mx-auto"></div>
                        <p className="mt-4 text-gray-500">Cargando ferias...</p>
                    </div>
                ) : ferias.length > 0 ? (
                    ferias.map((f) => (
                        <div key={f.id} className={`bg-white rounded-xl shadow-sm border border-gray-100 p-4 hover:shadow-md transition-all duration-300 overflow-hidden ${expandedId === f.id ? 'ring-2 ring-primary-500 border-transparent shadow-md' : ''}`}>
                            <div className="flex justify-between items-center">
                                <div className="flex-1">
                                    <h3 className="text-xl font-bold text-gray-800">{f.nombre}</h3>
                                    <div className="flex flex-wrap items-center gap-2 mt-1">
                    <span className="text-sm font-medium text-primary-600 bg-primary-50 px-2 py-0.5 rounded">
                      {formatHorarios(f.horarios)}
                    </span>
                                        <span className="text-sm text-gray-500">•</span>
                                        <span className="text-sm text-gray-500 flex items-center gap-1">
                      <MapPin size={14} />
                                            {f.direccion}
                    </span>
                                    </div>
                                </div>
                                <button
                                    onClick={() => toggleExpand(f.id)}
                                    className={`p-2 rounded-lg bg-gray-50 hover:bg-gray-100 transition-transform duration-200 ${expandedId === f.id ? 'rotate-180 text-primary-600' : 'text-gray-400'}`}
                                >
                                    <ChevronDown size={20} />
                                </button>
                            </div>

                            {expandedId === f.id && (
                                <div className="mt-6 pt-6 border-t border-gray-100 animate-fadeIn">
                                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                                        <div>
                                            <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-2 flex items-center gap-1">
                                                <Clock size={12} /> Horarios Detallados
                                            </h4>
                                            {f.horarios && f.horarios.length > 0 ? (
                                                <ul className="space-y-2">
                                                    {f.horarios.map(h => (
                                                        <li key={h.id} className="text-sm flex justify-between bg-gray-50 p-2 rounded">
                                                            <span className="font-semibold text-gray-700 capitalize">{h.diaSemana}</span>
                                                            <span className="text-gray-600">{h.horaInicio.substring(0,5)} - {h.horaFin.substring(0,5)}</span>
                                                        </li>
                                                    ))}
                                                </ul>
                                            ) : (
                                                <p className="text-sm text-gray-500 italic">No hay horarios registrados.</p>
                                            )}
                                        </div>
                                        <div className="space-y-4">
                                            <div>
                                                <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-1 flex items-center gap-1">
                                                    <Info size={12} /> Tipo de Feria
                                                </h4>
                                                <p className="text-gray-700 font-medium capitalize">{f.tipo}</p>
                                            </div>
                                            <div>
                                                <h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider mb-1 flex items-center gap-1">
                                                    <Star size={12} /> Descripción
                                                </h4>
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
                        <MapPin className="h-12 w-12 text-gray-300 mx-auto mb-4" />
                        <p className="text-gray-500">No se encontraron ferias con este filtro.</p>
                    </div>
                )}
            </div>
        </div>
    )
}
