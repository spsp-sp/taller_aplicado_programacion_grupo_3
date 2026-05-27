import { useState, useEffect } from 'react'
import {
    Plus,
    Minus,
    Trash2,
    CheckCircle2,
    Circle,
    ShoppingBag,
    MapPin,
    Sparkles,
    ChevronRight,
    Store,
    BadgeDollarSign,
    Edit3,
    ChevronDown,
    X,
    AlertTriangle
} from 'lucide-react'
import useListaStore from '@store/listaStore'
import { listaService } from '@services/listaService'
import toast from 'react-hot-toast'

export default function ListaComprasPage() {
    const {
        listas,
        activeListaId,
        setActiveLista,
        addLista,
        removeLista,
        renameLista,
        addItem,
        removeItem,
        toggleItem,
        setPrecio,
        getTotalGastado,
        getActiveLista,
        fetchListas,
        isLoading
    } = useListaStore()

    const activeLista = getActiveLista()
    const [newItem, setNewItem] = useState({ nombre: '', cantidad: 1, unidad: 'un' })
    const [sugerencias, setSugerencias] = useState(null)
    const [cargandoSugerencias, setCargandoSugerencias] = useState(false)
    const [isMenuOpen, setIsMenuOpen] = useState(false)
    const [isEditingName, setIsEditingName] = useState(false)
    const [tempName, setTempName] = useState('')

    // Estados para Modales
    const [isCreateModalOpen, setIsCreateModalOpen] = useState(false)
    const [isDeleteModalOpen, setIsDeleteModalOpen] = useState(false)
    const [newListName, setNewListName] = useState('')

    useEffect(() => {
        fetchListas()
    }, [])

    useEffect(() => {
        if (activeLista?.items?.length > 0) {
            obtenerSugerencias()
        } else {
            setSugerencias(null)
        }
    }, [activeLista?.items?.length, activeListaId])

    const obtenerSugerencias = async () => {
        try {
            setCargandoSugerencias(true)
            const { data } = await listaService.getSugerencias(activeLista.items)
            setSugerencias(data)
        } catch (err) {
            console.error('Error al obtener sugerencias:', err)
        } finally {
            setCargandoSugerencias(false)
        }
    }

    const handleAddItem = async (e) => {
        e.preventDefault()
        if (!newItem.nombre.trim()) return
        await addItem(newItem)
        setNewItem({ nombre: '', cantidad: 1, unidad: 'un' })
        toast.success('Producto añadido')
    }

    const handleCreateLista = async (e) => {
        e.preventDefault()
        if (newListName.trim()) {
            await addLista(newListName)
            setNewListName('')
            setIsCreateModalOpen(false)
            toast.success('Lista creada')
        }
    }

    const handleDeleteLista = async () => {
        await removeLista(activeListaId)
        setIsDeleteModalOpen(false)
        toast.success('Lista eliminada')
    }

    const handleRename = async () => {
        if (tempName.trim() && tempName !== activeLista.nombre) {
            await renameLista(activeListaId, tempName)
            toast.success('Nombre actualizado')
        }
        setIsEditingName(false)
    }

    const adjustCantidad = (val) => {
        setNewItem(prev => ({
            ...prev,
            cantidad: Math.max(0.1, Number((prev.cantidad + val).toFixed(1)))
        }))
    }

    const totalGastado = getTotalGastado()

    if (isLoading && listas.length === 0) {
        return (
            <div className="flex flex-col items-center justify-center min-h-[60vh] gap-4">
                <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary-600"></div>
                <p className="text-gray-500 font-bold animate-pulse">Cargando tus listas...</p>
            </div>
        )
    }

    return (
        <div className="max-w-6xl mx-auto px-4 py-8 relative">

            {/* MODAL: CREAR LISTA */}
            {isCreateModalOpen && (
                <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 bg-black/40 backdrop-blur-sm animate-in fade-in duration-200">
                    <div className="bg-white w-full max-w-md rounded-[2.5rem] p-8 shadow-2xl animate-in zoom-in-95 duration-200">
                        <div className="flex justify-between items-center mb-6">
                            <h2 className="text-2xl font-black text-gray-800 flex items-center gap-2">
                                <Plus className="text-primary-600" /> Nueva Lista
                            </h2>
                            <button onClick={() => setIsCreateModalOpen(false)} className="p-2 hover:bg-gray-100 rounded-full text-gray-400 transition-colors">
                                <X size={24} />
                            </button>
                        </div>
                        <form onSubmit={handleCreateLista}>
                            <p className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-4">¿Cómo se llamará tu lista?</p>
                            <input
                                type="text"
                                placeholder="Ej: Compras del Domingo"
                                value={newListName}
                                onChange={e => setNewListName(e.target.value)}
                                autoFocus
                                className="w-full px-6 py-4 bg-gray-50 border-2 border-transparent focus:border-primary-500 focus:bg-white rounded-2xl text-lg font-bold transition-all outline-none mb-8"
                            />
                            <div className="flex gap-3">
                                <button type="button" onClick={() => setIsCreateModalOpen(false)} className="flex-1 py-4 font-black text-gray-400 hover:text-gray-600 transition-colors">
                                    CANCELAR
                                </button>
                                <button type="submit" disabled={!newListName.trim()} className="flex-[2] py-4 bg-primary-600 text-white rounded-2xl font-black shadow-lg shadow-primary-100 hover:bg-primary-700 transition-all active:scale-95 disabled:opacity-50 disabled:scale-100">
                                    CREAR LISTA
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            )}

            {/* MODAL: ELIMINAR LISTA */}
            {isDeleteModalOpen && (
                <div className="fixed inset-0 z-[100] flex items-center justify-center p-4 bg-black/40 backdrop-blur-sm animate-in fade-in duration-200">
                    <div className="bg-white w-full max-w-md rounded-[2.5rem] p-8 shadow-2xl animate-in zoom-in-95 duration-200">
                        <div className="flex flex-col items-center text-center">
                            <div className="w-20 h-20 bg-red-50 rounded-full flex items-center justify-center mb-6">
                                <AlertTriangle size={40} className="text-red-500" />
                            </div>
                            <h2 className="text-2xl font-black text-gray-800 mb-2">¿Eliminar lista?</h2>
                            <p className="text-gray-400 font-medium mb-8">
                                Estás a punto de borrar <span className="text-gray-700 font-bold">"{activeLista?.nombre}"</span>. Esta acción no se puede deshacer.
                            </p>
                            <div className="flex w-full gap-3">
                                <button onClick={() => setIsDeleteModalOpen(false)} className="flex-1 py-4 bg-gray-50 text-gray-500 rounded-2xl font-black hover:bg-gray-100 transition-all">
                                    CANCELAR
                                </button>
                                <button onClick={handleDeleteLista} className="flex-1 py-4 bg-red-500 text-white rounded-2xl font-black shadow-lg shadow-red-100 hover:bg-red-600 transition-all active:scale-95">
                                    ELIMINAR
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            )}

            {/* Header con Selector de Listas */}
            <div className="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
                <div className="flex items-center gap-4">
                    <div className="bg-primary-600 p-3 rounded-2xl text-white shadow-lg shadow-primary-200">
                        <ShoppingBag size={28} />
                    </div>
                    <div>
                        {isEditingName ? (
                            <div className="flex items-center gap-2">
                                <input
                                    type="text"
                                    value={tempName}
                                    onChange={e => setTempName(e.target.value)}
                                    className="text-2xl font-black text-gray-800 border-b-2 border-primary-500 focus:outline-none bg-transparent"
                                    autoFocus
                                    onBlur={handleRename}
                                    onKeyDown={e => e.key === 'Enter' && handleRename()}
                                />
                            </div>
                        ) : (
                            <div className="flex items-center gap-2 group">
                                <h1 className="text-3xl font-black text-gray-800">{activeLista?.nombre || 'Mi Lista'}</h1>
                                <button
                                    onClick={() => { setTempName(activeLista?.nombre); setIsEditingName(true); }}
                                    className="p-1 text-gray-300 hover:text-primary-500 transition-colors opacity-0 group-hover:opacity-100"
                                >
                                    <Edit3 size={18} />
                                </button>
                            </div>
                        )}
                        <p className="text-sm text-gray-400 font-bold uppercase tracking-widest">
                            {activeLista?.items?.length || 0} productos • {activeLista?.items?.filter(i => i.completado).length || 0} comprados
                        </p>
                    </div>
                </div>

                <div className="flex items-center gap-2">
                    <div className="relative">
                        <button
                            onClick={() => setIsMenuOpen(!isMenuOpen)}
                            className="flex items-center gap-2 px-4 py-2.5 bg-white border-2 border-gray-100 rounded-xl font-bold text-gray-700 hover:border-primary-200 transition-all shadow-sm"
                        >
                            Mis Listas <ChevronDown size={18} className={`transition-transform ${isMenuOpen ? 'rotate-180' : ''}`} />
                        </button>
                        {isMenuOpen && (
                            <div className="absolute right-0 mt-2 w-56 bg-white rounded-2xl shadow-xl border border-gray-100 z-50 overflow-hidden py-2 animate-in fade-in zoom-in-95 duration-150">
                                {listas.map(l => (
                                    <button
                                        key={l.id}
                                        onClick={() => { setActiveLista(l.id); setIsMenuOpen(false); }}
                                        className={`w-full text-left px-4 py-3 text-sm font-bold flex items-center justify-between transition-colors ${activeListaId === l.id ? 'bg-primary-50 text-primary-700' : 'text-gray-600 hover:bg-gray-50'}`}
                                    >
                                        {l.nombre}
                                        {activeListaId === l.id && <CheckCircle2 size={16} />}
                                    </button>
                                ))}
                                <div className="border-t border-gray-50 mt-2 pt-2 px-2">
                                    <button
                                        onClick={() => { setIsCreateModalOpen(true); setIsMenuOpen(false); }}
                                        className="w-full flex items-center gap-2 px-3 py-2 text-sm font-black text-primary-600 hover:bg-primary-50 rounded-lg transition-colors"
                                    >
                                        <Plus size={16} /> Nueva Lista
                                    </button>
                                    {listas.length > 1 && (
                                        <button
                                            onClick={() => { setIsDeleteModalOpen(true); setIsMenuOpen(false); }}
                                            className="w-full flex items-center gap-2 px-3 py-2 text-sm font-black text-red-500 hover:bg-red-50 rounded-lg transition-colors mt-1"
                                        >
                                            <Trash2 size={16} /> Eliminar Actual
                                        </button>
                                    )}
                                </div>
                            </div>
                        )}
                    </div>
                </div>
            </div>

            <div className="flex flex-col lg:flex-row gap-8">
                <div className="flex-1">
                    <form onSubmit={handleAddItem} className="bg-white p-5 rounded-[2rem] border-2 border-gray-100 shadow-sm mb-8">
                        <div className="flex flex-col md:flex-row gap-4">
                            <input
                                type="text"
                                value={newItem.nombre}
                                onChange={(e) => setNewItem({...newItem, nombre: e.target.value})}
                                placeholder="¿Qué necesitas comprar hoy?"
                                className="flex-1 px-4 py-3 bg-gray-50 border-none rounded-2xl focus:ring-2 focus:ring-primary-500 text-lg font-bold placeholder:text-gray-300"
                            />
                            <div className="flex items-center gap-3">
                                <div className="flex items-center bg-gray-50 rounded-2xl p-1 border border-gray-100">
                                    <button type="button" onClick={() => adjustCantidad(-1)} className="p-2 hover:bg-white hover:text-primary-600 rounded-xl transition-all text-gray-400">
                                        <Minus size={20} />
                                    </button>
                                    <span className="w-12 text-center font-black text-gray-700">{newItem.cantidad}</span>
                                    <button type="button" onClick={() => adjustCantidad(1)} className="p-2 hover:bg-white hover:text-primary-600 rounded-xl transition-all text-gray-400">
                                        <Plus size={20} />
                                    </button>
                                </div>

                                <select value={newItem.unidad} onChange={(e) => setNewItem({...newItem, unidad: e.target.value})} className="bg-gray-50 border-none rounded-2xl px-4 py-3 font-black text-gray-600 focus:ring-2 focus:ring-primary-500 text-sm">
                                    <option value="un">un</option>
                                    <option value="kg">kg</option>
                                    <option value="gr">gr</option>
                                    <option value="atado">atado</option>
                                    <option value="malla">malla</option>
                                </select>

                                <button type="submit" className="p-4 bg-green-500 text-white rounded-2xl hover:bg-green-600 transition-all shadow-lg shadow-green-100 active:scale-95">
                                    <Plus size={24} strokeWidth={3} />
                                </button>
                            </div>
                        </div>
                    </form>

                    <div className="space-y-4">
                        {!activeLista?.items || activeLista.items.length === 0 ? (
                            <div className="text-center py-20 bg-gray-50 rounded-[3rem] border-2 border-dashed border-gray-200">
                                <div className="bg-white w-24 h-24 rounded-full flex items-center justify-center mx-auto mb-6 shadow-sm">
                                    <ShoppingBag className="text-gray-200" size={48} />
                                </div>
                                <h3 className="text-xl font-black text-gray-800">Tu lista está lista</h3>
                                <p className="text-gray-400 mt-2 font-medium">Añade los productos que necesitas para tu feria</p>
                            </div>
                        ) : (
                            <div className="grid grid-cols-1 gap-3">
                                {activeLista.items.map((item) => (
                                    <div key={item.id} className={`group flex items-center gap-4 p-5 rounded-3xl border-2 transition-all ${item.completado ? 'bg-gray-50/50 border-transparent opacity-60' : 'bg-white border-gray-50 shadow-sm hover:border-primary-100 hover:shadow-md'}`}>
                                        <button onClick={() => toggleItem(item.id)} className={`transition-colors ${item.completado ? 'text-green-500' : 'text-gray-200 hover:text-primary-500'}`}>
                                            {item.completado ? <CheckCircle2 size={32} /> : <Circle size={32} />}
                                        </button>
                                        <div className="flex-1">
                                            <span className={`block text-lg font-black ${item.completado ? 'line-through text-gray-400' : 'text-gray-800'}`}>{item.nombre}</span>
                                            <span className="text-xs font-black text-gray-400 uppercase tracking-widest flex items-center gap-1">{item.cantidad} {item.unidad}</span>
                                        </div>
                                        {item.completado && (
                                            <div className="flex items-center gap-2 bg-white px-4 py-2 rounded-2xl border border-gray-100 shadow-inner">
                                                <BadgeDollarSign size={18} className="text-green-500" />
                                                <input type="number" min="0" placeholder="Precio" value={item.precioPagado || ''} onChange={(e) => setPrecio(item.id, e.target.value)} className="w-20 bg-transparent border-none p-0 focus:ring-0 text-sm font-black text-gray-700 text-right" />
                                            </div>
                                        )}
                                        <button onClick={() => removeItem(item.id)} className="p-2 text-gray-200 hover:text-red-500 transition-colors">
                                            <Trash2 size={20} />
                                        </button>
                                    </div>
                                ))}
                            </div>
                        )}
                    </div>
                </div>

                <div className="w-full lg:w-80 space-y-6">
                    <div className="bg-white rounded-[2.5rem] p-8 border-2 border-gray-50 shadow-sm relative overflow-hidden">
                        <div className="absolute top-0 right-0 w-24 h-24 bg-primary-50 rounded-full -mr-12 -mt-12 opacity-50"></div>
                        <h2 className="text-[10px] font-black text-gray-400 uppercase tracking-[0.2em] mb-4">Total Gastado</h2>
                        <div className="flex items-baseline gap-1">
                            <span className="text-2xl font-black text-primary-600">$</span>
                            <span className="text-5xl font-black text-primary-600 tracking-tighter">{totalGastado.toLocaleString('es-CL')}</span>
                        </div>
                        <p className="text-[10px] font-bold text-gray-400 mt-4 uppercase">{activeLista?.items?.filter(i => i.completado).length || 0} productos pagados</p>
                    </div>

                    <div className="bg-green-600 rounded-[2.5rem] p-8 text-white shadow-xl shadow-green-100">
                        <div className="flex items-center gap-3 mb-6">
                            <Sparkles className="text-yellow-300" size={24} />
                            <h2 className="font-black text-xl tracking-tight">Sugerencias</h2>
                        </div>
                        {cargandoSugerencias ? (
                            <div className="py-10 text-center space-y-4">
                                <div className="animate-spin rounded-full h-10 w-10 border-4 border-white/20 border-t-white mx-auto"></div>
                                <p className="text-xs font-bold text-green-100 uppercase tracking-widest">Analizando ferias...</p>
                            </div>
                        ) : sugerencias?.feriasSugeridas?.length > 0 ? (
                            <div className="space-y-4">
                                {sugerencias.feriasSugeridas.map((feria) => (
                                    <div key={feria.id} className="bg-white/10 backdrop-blur-md rounded-3xl p-5 border border-white/10 hover:bg-white/20 transition-all group">
                                        <div className="flex justify-between items-start mb-2">
                                            <h3 className="font-black text-sm leading-tight group-hover:text-yellow-200 transition-colors">{feria.nombre}</h3>
                                            {feria.abiertaHoy && <span className="bg-yellow-300 text-green-900 text-[8px] font-black uppercase px-2 py-1 rounded-lg">Hoy</span>}
                                        </div>
                                        <div className="flex items-center gap-1 text-[10px] text-green-100 mb-4 font-bold">
                                            <MapPin size={12} /> {feria.comuna}
                                        </div>
                                        <a href={`/ferias/${feria.id}`} className="flex items-center justify-between text-[10px] font-black bg-white text-green-700 px-5 py-3 rounded-2xl hover:bg-green-50 transition-all active:scale-95 shadow-lg">
                                            VER FERIA <ChevronRight size={16} />
                                        </a>
                                    </div>
                                ))}
                            </div>
                        ) : (
                            <div className="py-10 text-center opacity-50">
                                <Store className="mx-auto mb-4" size={56} />
                                <p className="text-xs font-bold uppercase tracking-widest leading-relaxed">Agrega productos para ver ferias recomendadas</p>
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </div>
    )
}