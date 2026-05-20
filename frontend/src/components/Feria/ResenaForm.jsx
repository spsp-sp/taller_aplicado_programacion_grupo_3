import React, { useState } from 'react'
import {
    Apple, BadgeDollarSign, Bean, CreditCard, HandCoins, User,
    Broccoli, Cherry, Carrot, Fish, Beef, ShoppingBasket, Recycle
} from 'lucide-react'
import { resenaService } from '../../services/resenaService'
import { toast } from 'react-hot-toast'

const ResenaForm = ({ feriaId, onResenaCreated }) => {
    const [calificacion, setCalificacion] = useState(5)
    const [comentario, setComentario] = useState('')
    const [precio, setPrecio] = useState('medio')
    const [metodosPago, setMetodosPago] = useState({ efectivo: true, tarjeta: false })
    const [enviando, setEnviando] = useState(false)

    const [variedad, setVariedad] = useState({
        vegetales: true, frutas: true, hortalizas: false,
        frutosSecos: false, carnes: false, pescados: false,
        abarrotes: false, segundaMano: false
    })

    const [afluenciaPorBloque, setAfluenciaPorBloque] = useState({
        temprano: 1, mediaDia: 2, cierre: 1
    })

    const bloquesHorarios = [
        { id: 'temprano', etiqueta: '8:00 - 10:00', titulo: 'Mañana' },
        { id: 'mediaDia', etiqueta: '10:00 - 13:00', titulo: 'Media día' },
        { id: 'cierre', etiqueta: '13:00 - 15:00', titulo: 'Almuerzo/Cierre' }
    ]

    const getSemaforoColor = (nivel) => {
        if (nivel === 1) return { color: 'text-green-500', fill: '#22c55e', texto: 'Baja' }
        if (nivel === 2) return { color: 'text-yellow-500', fill: '#eab308', texto: 'Normal' }
        return { color: 'text-red-500', fill: '#ef4444', texto: 'Lleno' }
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        setEnviando(true)
        try {
            // IMPORTANTE: Asegúrate de que el nombre del servicio sea correcto (resenaService o reseñaService)
            await resenaService.create({
                feriaId: parseInt(feriaId),
                calificacion,
                comentario,
                precio,
                metodosPago,
                variedad,
                afluenciaDetallada: afluenciaPorBloque
            })
            toast.success('¡Reseña publicada!')
            if (onResenaCreated) onResenaCreated()
        } catch (error) {
            toast.error('Error al publicar')
        } finally {
            setEnviando(false)
        }
    }

    return (
        <form onSubmit={handleSubmit} className="bg-gray-50 p-5 rounded-xl border shadow-sm mb-6 space-y-6">
            <h3 className="font-bold text-gray-800 text-base border-b pb-2">Tu experiencia en la feria</h3>

            {/* Calificación */}
            <div className="flex justify-between items-center">
                <label className="text-sm font-medium text-gray-700">Calificación General</label>
                <div className="flex gap-1">
                    {[1, 2, 3, 4, 5].map((num) => (
                        <button key={num} type="button" onClick={() => setCalificacion(num)}>
                            <Apple size={24} fill={num <= calificacion ? "#fa1528" : "none"} className={num <= calificacion ? "text-red-600" : "text-gray-300"} />
                        </button>
                    ))}
                </div>
            </div>

            {/* Afluencia */}
            <div className="space-y-3 bg-white p-3 rounded-lg border border-gray-100">
                <label className="text-sm font-semibold text-gray-700 block mb-2">Afluencia</label>
                {bloquesHorarios.map((bloque) => (
                    <div key={bloque.id} className="flex items-center justify-between bg-gray-50 p-2 rounded-md">
                        <span className="text-xs font-bold text-gray-700">{bloque.titulo}</span>
                        <div className="flex gap-1">
                            {[1, 2, 3].map((nivel) => (
                                <button key={nivel} type="button" onClick={() => setAfluenciaPorBloque(prev => ({...prev, [bloque.id]: nivel}))}>
                                    <User size={18} fill={nivel <= afluenciaPorBloque[bloque.id] ? getSemaforoColor(nivel).fill : "none"} className={nivel <= afluenciaPorBloque[bloque.id] ? getSemaforoColor(nivel).color : "text-gray-200"} />
                                </button>
                            ))}
                        </div>
                    </div>
                ))}
            </div>

            {/* Variedad */}
            <div className="space-y-2">
                <label className="text-xs font-medium text-gray-600 block">Variedad de Productos</label>
                {/* Reemplaza la sección de Variedad con esta versión corregida */}
                <div className="flex flex-wrap gap-2">
                    {[
                        { id: 'vegetales', icon: Broccoli, activeClass: 'bg-green-50 border-green-500 text-green-600' },
                        { id: 'frutas', icon: Cherry, activeClass: 'bg-red-50 border-red-500 text-red-600' },
                        { id: 'hortalizas', icon: Carrot, activeClass: 'bg-orange-50 border-orange-500 text-orange-600' },
                        { id: 'frutosSecos', icon: Bean, activeClass: 'bg-yellow-50 border-yellow-600 text-yellow-700' },
                        { id: 'carnes', icon: Beef, activeClass: 'bg-red-50 border-red-500 text-red-600' },
                        { id: 'pescados', icon: Fish, activeClass: 'bg-blue-50 border-blue-500 text-blue-600' },
                        { id: 'abarrotes', icon: ShoppingBasket, activeClass: 'bg-indigo-50 border-indigo-500 text-indigo-600' },
                        { id: 'segundaMano', icon: Recycle, activeClass: 'bg-emerald-50 border-emerald-500 text-emerald-600' }
                    ].map((item) => (
                        <button
                            key={item.id}
                            type="button"
                            onClick={() => setVariedad(v => ({...v, [item.id]: !v[item.id]}))}
                            className={`p-2 rounded-lg border transition-all ${
                                variedad[item.id] ? item.activeClass : 'bg-white text-gray-300 border-gray-200'
                            }`}
                        >
                            <item.icon size={20} />
                        </button>
                    ))}
                </div>
            </div>

            {/* Precio y Pagos */}
            <div className="grid grid-cols-2 gap-4">
                <div>
                    <label className="text-xs font-medium text-gray-600 block mb-1">Precio</label>
                    <div className="flex gap-1">
                        {['barato', 'medio', 'caro'].map((nivel, i) => (
                            <button key={nivel} type="button" onClick={() => setPrecio(nivel)}>
                                <BadgeDollarSign size={22} className={i <= ['barato', 'medio', 'caro'].indexOf(precio) ? "text-green-600" : "text-gray-300"} />
                            </button>
                        ))}
                    </div>
                </div>
                <div>
                    <label className="text-xs font-medium text-gray-600 block mb-1">Pagos</label>
                    <div className="flex gap-2">
                        <button type="button" onClick={() => setMetodosPago(p => ({...p, efectivo: !p.efectivo}))} className={`p-2 rounded border ${metodosPago.efectivo ? 'border-blue-500 text-blue-600' : 'text-gray-300'}`}><HandCoins size={20} /></button>
                        <button type="button" onClick={() => setMetodosPago(p => ({...p, tarjeta: !p.tarjeta}))} className={`p-2 rounded border ${metodosPago.tarjeta ? 'border-blue-500 text-blue-600' : 'text-gray-300'}`}><CreditCard size={20} /></button>
                    </div>
                </div>
            </div>

            <textarea value={comentario} onChange={(e) => setComentario(e.target.value)} className="w-full p-3 border rounded-lg text-sm" rows="3" placeholder="Comentario..."></textarea>
            <button type="submit" disabled={enviando} className="w-full bg-blue-600 text-white py-3 rounded-lg font-bold">{enviando ? 'Publicando...' : 'Publicar Reseña'}</button>
        </form>
    )
}
export default ResenaForm