import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'
import { MapPin, Clock, ChevronDown, Store, Tag, Search } from 'lucide-react'
import { useFerias } from '@hooks/useFerias'
import api from '@services/api'

export default function FeriasPage() {
    // 1. Estados para filtros y datos
    const [filters, setFilters] = useState({ comunaId: '', dia: '', tipo: '' })
    const [activeFilters, setActiveFilters] = useState({ comunaId: '', dia: '', tipo: '' })
    const [comunas, setComunas] = useState([])

    // 2. Cargar comunas dinámicamente
    useEffect(() => {
        api.get('/comunas')
            .then(res => setComunas(res.data))
            .catch(err => console.error("Error al obtener comunas:", err))
    }, [])

    // 3. Obtener ferias (usamos activeFilters para que solo cambie al dar clic en Filtrar)
    const { data: ferias = [], isLoading, isError } = useFerias(activeFilters)

    const diasSemana = ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']
    const tiposFeria = ['libre', 'municipal', 'organica', 'artesanal']

    const handleApplyFilters = () => {
        setActiveFilters(filters)
    }

    if (isLoading) return <div className="text-center py-20 text-gray-500">Cargando directorio...</div>
    if (isError) return <div className="text-center py-20 text-red-500">Error al cargar datos.</div>

    return (
        <div className="min-h-screen bg-[#f9fafb] pb-20">
            {/* --- CABECERA (Header) --- */}
            <div className="bg-white pt-16 pb-10 px-4 text-center">
                <h1 className="text-4xl font-extrabold mb-4">
          <span className="bg-gradient-to-r from-green-600 to-yellow-600 bg-clip-text text-transparent">
            Directorio de Ferias
          </span>
                </h1>
                <p className="max-w-2xl mx-auto text-gray-500 text-sm leading-relaxed">
                    Encuentra tus ferias favoritas y conoce dónde y cuándo se ubican para que nunca te quedes sin tus productos frescos.
                </p>
            </div>

            <div className="max-w-4xl mx-auto px-4 -mt-8">
                {/* --- BARRA DE FILTROS (Card Blanca) --- */}
                <div className="bg-white rounded-2xl shadow-xl p-6 mb-10 border border-gray-100">
                    <div className="grid grid-cols-1 md:grid-cols-4 gap-4 items-end">

                        {/* Filtro Comuna */}
                        <div className="md:col-span-1">
                            <label className="block text-[11px] font-bold text-gray-700 uppercase mb-2 ml-1">Seleccionar Comuna</label>
                            <select
                                className="w-full bg-white border border-gray-200 rounded-xl p-3 text-sm text-gray-700 focus:ring-2 focus:ring-green-500 outline-none transition-all appearance-none cursor-pointer"
                                value={filters.comunaId}
                                onChange={(e) => setFilters({ ...filters, comunaId: e.target.value })}
                            >
                                <option value="">Todas las comunas</option>
                                {comunas.map(c => <option key={c.id} value={c.id}>{c.nombre}</option>)}
                            </select>
                        </div>

                        {/* Filtro Tipo */}
                        <div>
                            <label className="block text-[11px] font-bold text-gray-700 uppercase mb-2 ml-1">Tipo</label>
                            <select
                                className="w-full bg-white border border-gray-200 rounded-xl p-3 text-sm text-gray-700 focus:ring-2 focus:ring-green-500 outline-none capitalize"
                                value={filters.tipo}
                                onChange={(e) => setFilters({ ...filters, tipo: e.target.value })}
                            >
                                <option value="">Todos los tipos</option>
                                {tiposFeria.map(t => <option key={t} value={t}>{t}</option>)}
                            </select>
                        </div>

                        {/* Filtro Día */}
                        <div>
                            <label className="block text-[11px] font-bold text-gray-700 uppercase mb-2 ml-1">Día</label>
                            <select
                                className="w-full bg-white border border-gray-200 rounded-xl p-3 text-sm text-gray-700 focus:ring-2 focus:ring-green-500 outline-none capitalize"
                                value={filters.dia}
                                onChange={(e) => setFilters({ ...filters, dia: e.target.value })}
                            >
                                <option value="">Cualquier día</option>
                                {diasSemana.map(d => <option key={d} value={d}>{d}</option>)}
                            </select>
                        </div>

                        {/* Botón Filtrar */}
                        <button
                            onClick={handleApplyFilters}
                            className="w-full bg-[#10a34d] hover:bg-[#0d8a41] text-white font-bold py-3 px-6 rounded-xl transition-all shadow-lg shadow-green-100 flex items-center justify-center gap-2"
                        >
                            Filtrar
                        </button>
                    </div>
                </div>

                {/* --- LISTA DE RESULTADOS --- */}
                <div className="space-y-6">
                    {ferias.length === 0 ? (
                        <div className="bg-white border-2 border-dashed border-gray-200 rounded-3xl py-20 px-10 text-center flex flex-col items-center justify-center">
                            <div className="w-16 h-16 bg-gray-50 rounded-full flex items-center justify-center mb-4">
                                <Search size={30} className="text-gray-300" />
                            </div>
                            <p className="text-gray-500 font-medium">No se encontraron ferias con estos criterios.</p>
                        </div>
                    ) : (
                        ferias.map((feria) => (
                            <FeriaCard key={feria.id} feria={feria} />
                        ))
                    )}
                </div>
            </div>
        </div>
    )
}

function FeriaCard({ feria }) {
    const [isOpen, setIsOpen] = useState(true)

    const allDias = [...new Set(feria.ubicaciones?.flatMap(u => u.diasFeria?.map(d => d.diaSemana)))]
    const shortDias = allDias.map(d => d.charAt(0).toUpperCase() + d.slice(1, 2)).join(' · ')
    const firstTime = feria.ubicaciones?.[0]?.diasFeria?.[0]
    const timeStr = firstTime ? `${firstTime.horaInicio.slice(0,5)} a ${firstTime.horaFin.slice(0,5)}` : 'Horario no definido'

    return (
        <div className="bg-white rounded-2xl border border-gray-100 shadow-sm overflow-hidden transition-all hover:shadow-md">
            <div
                className="p-6 cursor-pointer hover:bg-gray-50/50 transition-colors"
                onClick={() => setIsOpen(!isOpen)}
            >
                <div className="flex justify-between items-center mb-3">
                    <h2 className="text-2xl font-bold text-gray-800">{feria.nombre}</h2>
                    <ChevronDown className={`text-gray-400 transition-transform duration-300 ${isOpen ? 'rotate-180' : ''}`} />
                </div>

                <div className="flex gap-2 mb-4">
          <span className="flex items-center gap-1 px-3 py-1 bg-green-50 text-green-700 rounded-lg text-[10px] font-bold border border-green-100">
            <MapPin size={10} /> {feria.comuna?.nombre || 'RM'}
          </span>
                    <span className="flex items-center gap-1 px-3 py-1 bg-blue-50 text-blue-700 rounded-lg text-[10px] font-bold border border-blue-100">
            <Tag size={10} /> {feria.tipo}
          </span>
                </div>

                <div className="flex items-center gap-2 text-sm text-gray-500">
                    <Clock size={16} className="text-gray-400" />
                    <span className="font-medium">{shortDias} — {timeStr}</span>
                </div>
            </div>

            {isOpen && (
                <div className="px-6 pb-6 border-t border-gray-50 pt-6 bg-gray-50/30">
                    <h3 className="text-[10px] font-bold text-gray-400 uppercase tracking-widest mb-6 flex items-center gap-2">
                        <MapPin size={10} /> Ubicaciones y Días
                    </h3>

                    <div className="space-y-8">
                        {feria.ubicaciones?.map((ubi) => (
                            <div key={ubi.id} className="relative pl-12">
                                <div className="absolute left-0 top-0 w-9 h-9 bg-green-50 rounded-full flex items-center justify-center text-green-600 border border-green-100 shadow-sm">
                                    <span className="text-[11px] font-bold">/|\</span>
                                </div>

                                <div className="flex items-center gap-2 mb-1">
                                    <h4 className="font-bold text-gray-800 text-base">{ubi.callePrincipal}</h4>
                                    <span className="px-2 py-0.5 bg-indigo-50 text-indigo-600 rounded-md text-[10px] font-bold flex items-center gap-1 border border-indigo-100">
                    <Store size={10} /> {ubi.numPuestos} puestos
                  </span>
                                </div>

                                <p className="text-sm text-gray-500 mb-4">
                                    Entre {ubi.calleInicio} y {ubi.calleTermino}
                                </p>

                                <div className="flex flex-wrap gap-2">
                                    {ubi.diasFeria?.map((dia) => (
                                        <span key={dia.id} className="px-4 py-1.5 bg-white border border-gray-200 rounded-xl text-xs font-semibold text-gray-700 shadow-sm capitalize flex items-center gap-1.5">
                      <Clock size={12} className="text-gray-400" />
                                            {dia.diaSemana}
                    </span>
                                    ))}
                                </div>
                            </div>
                        ))}
                    </div>

                    <div className="mt-8 flex justify-center">
                        <Link
                            to={`/ferias/${feria.id}`}
                            className="w-10 h-10 bg-white rounded-full flex items-center justify-center border border-gray-200 hover:border-green-500 hover:text-green-600 transition-all shadow-sm"
                        >
                            <ChevronDown size={20} className="text-gray-400" />
                        </Link>
                    </div>
                </div>
            )}
        </div>
    )
}