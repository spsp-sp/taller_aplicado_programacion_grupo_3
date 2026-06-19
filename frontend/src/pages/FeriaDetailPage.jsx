import { useState } from 'react'
import { useParams, Link, useSearchParams, useNavigate } from 'react-router-dom'
import { MapPin, Clock, Star, Store, MessageSquare, ArrowLeft, Edit, Trash2 } from 'lucide-react'
import { useFeria } from '@hooks/useFerias'
import ResenaForm from '@components/Feria/ResenaForm'
import useAuthStore from '../store/authStore'
import { useQueryClient } from '@tanstack/react-query'
import CarouselRecorrido from "@components/Feria/RecorridoVirtual";
import { resenaService } from '../services/resenaService'
import { toast } from 'react-hot-toast'


export default function FeriaDetailPage() {
    const { id } = useParams()
    const navigate = useNavigate()
    const [searchParams] = useSearchParams()
    const ubicacionId = searchParams.get('ubi')

    const { data: feria, isLoading, isError } = useFeria(id)
    const { user } = useAuthStore()
    const queryClient = useQueryClient()

    const [editingResenaId, setEditingResenaId] = useState(null)

    const handleResenaCreated = () => {
        queryClient.invalidateQueries(['feria', id])
    }

    const handleResenaUpdated = () => {
        queryClient.invalidateQueries(['feria', id])
        setEditingResenaId(null)
    }

    const handleDeleteResena = async (resenaId) => {
        if (window.confirm('¿Estás seguro de que deseas eliminar esta reseña?')) {
            try {
                await resenaService.delete(resenaId)
                toast.success('Reseña eliminada con éxito')
                queryClient.invalidateQueries(['feria', id])
            } catch (error) {
                console.error('Error al eliminar la reseña:', error)
                toast.error('Error al eliminar la reseña')
            }
        }
    }

    if (isLoading) return (
        <div className="flex flex-col items-center justify-center py-20">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-green-600 mb-4"></div>
            <p className="text-gray-500">Cargando detalles de la feria...</p>
        </div>
    )

    if (isError || !feria) return (
        <div className="max-w-4xl mx-auto px-4 py-20 text-center">
            <h2 className="text-2xl font-bold text-red-600 mb-2">¡Ups! Algo salió mal</h2>
            <p className="text-gray-600 mb-6">No pudimos encontrar la feria que buscas.</p>
            <Link to="/ferias" className="bg-green-600 text-white px-6 py-2 rounded-lg hover:bg-green-700 transition-colors">
                Volver al listado
            </Link>
        </div>
    )

    // Filtrar la ubicación seleccionada
    const ubicacionSeleccionada = ubicacionId
        ? feria.ubicaciones?.find(u => u.id === parseInt(ubicacionId))
        : feria.ubicaciones?.[0]

    if (!ubicacionSeleccionada) {
        return (
            <div className="max-w-4xl mx-auto px-4 py-20 text-center">
                <h2 className="text-2xl font-bold text-red-600 mb-2">Ubicación no encontrada</h2>
                <p className="text-gray-600 mb-6">No pudimos encontrar la ubicación que buscas.</p>
                <Link to="/ferias" className="bg-green-600 text-white px-6 py-2 rounded-lg hover:bg-green-700 transition-colors">
                    Volver al listado
                </Link>
            </div>
        )
    }

    // Calcular promedio de calificación
    const promedio = feria.resenas?.length > 0
        ? (feria.resenas.reduce((acc, r) => acc + r.calificacion, 0) / feria.resenas.length).toFixed(1)
        : null

    return (
        <div className="max-w-5xl mx-auto px-4 py-8">

            {/* Botón superior dinámico */}
            <button
                onClick={() => navigate(-1)}
                className="inline-flex items-center gap-2 text-sm text-gray-500 hover:text-gray-800 mb-6 font-medium transition-colors"
            >
                <ArrowLeft size={16} />
                <span>Volver</span>
            </button>

            {/* Cabecera de la Feria y Ubicación */}
            <div className="bg-white shadow-sm rounded-xl border p-6 mb-8">

                <div className="flex items-center gap-3 mb-4">
                    <h1 className="text-3xl font-extrabold text-gray-900">{feria.nombre}</h1>
                    <span className="px-3 py-1 bg-green-100 text-green-700 text-xs font-bold rounded-full uppercase tracking-wider">
                        {feria.tipo}
                    </span>
                </div>
                <div className="flex gap-2 mb-6">
                    {feria.comuna && (
                        <span className="flex items-center gap-1 px-3 py-1 bg-blue-50 text-blue-700 rounded-lg text-xs font-bold border border-blue-100">
                            <MapPin size={12} /> {feria.comuna.nombre}
                        </span>
                    )}
                </div>

                {/* Detalles de la Ubicación Seleccionada */}
                <div className="border-t pt-6">
                    <h3 className="text-[10px] font-bold text-gray-400 uppercase tracking-widest mb-4 flex items-center gap-2">
                        <MapPin size={12} /> Ubicación Seleccionada
                    </h3>
                    <div className="relative pl-12">
                        <div className="absolute left-0 top-0 w-9 h-9 bg-green-50 rounded-full flex items-center justify-center text-green-600 border border-green-100 shadow-sm">
                            <MapPin size={14} />
                        </div>
                        <div className="flex items-center gap-2 mb-1">
                            <h4 className="font-bold text-gray-800 text-base">{ubicacionSeleccionada.callePrincipal}</h4>
                            {ubicacionSeleccionada.numPuestos && (
                                <span className="px-2 py-0.5 bg-indigo-50 text-indigo-600 rounded-md text-[10px] font-bold flex items-center gap-1 border border-indigo-100">
                                    <Store size={10} /> {ubicacionSeleccionada.numPuestos} puestos
                                </span>
                            )}
                        </div>
                        <p className="text-sm text-gray-500 mb-4">
                            Entre {ubicacionSeleccionada.calleInicio || 'inicio'} y {ubicacionSeleccionada.calleTermino || 'fin'}
                        </p>
                        <div className="flex flex-wrap gap-2">
                            {ubicacionSeleccionada.diasFeria?.map((dia) => (
                                <span key={dia.id} className="px-4 py-1.5 bg-white border border-gray-200 rounded-xl text-xs font-semibold text-gray-700 shadow-sm capitalize flex items-center gap-1.5">
                                    <Clock size={12} className="text-gray-400" />
                                    {dia.diaSemana} ({dia.horaInicio.slice(0, 5)} - {dia.horaFin.slice(0, 5)})
                                </span>
                            ))}
                        </div>
                    </div>
                </div>

                <div className="pt-6 mb-6">
                    <h3 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-2">Descripción</h3>
                    <p className="text-gray-700 leading-relaxed">{feria.descripcion}</p>
                </div>

                {/* CARRUSEL DE RECORRIDO VIRTUAL */}
                <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6">
                    <CarouselRecorrido />
                </div>

            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                {/* Columna Izquierda: Feriantes */}
                <div className="lg:col-span-2">
                    <section className="mb-10">
                        <div className="flex items-center gap-2 mb-6">
                            <Store className="text-green-600" />
                            <h2 className="text-2xl font-bold text-gray-800">Feriantes en esta ubicación</h2>
                        </div>

                        {ubicacionSeleccionada.feriantes?.length > 0 ? (
                            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                {ubicacionSeleccionada.feriantes.map((f) => (
                                    <Link
                                        key={f.id}
                                        to={`/feriantes/${f.id}`}
                                        className="group bg-white border rounded-xl p-4 flex items-center gap-4 hover:border-green-500 hover:shadow-md transition-all"
                                    >
                                        <div className="w-12 h-12 rounded-full bg-green-600 flex items-center justify-center text-white font-bold text-lg group-hover:scale-110 transition-transform">
                                            {f.nombre.charAt(0)}
                                        </div>
                                        <div>
                                            <p className="font-bold text-gray-900 group-hover:text-green-600 transition-colors">{f.nombre}</p>
                                            <p className="text-sm text-gray-500">{f.rubro}</p>
                                        </div>
                                    </Link>
                                ))}
                            </div>
                        ) : (
                            <div className="bg-gray-50 border border-dashed rounded-xl p-8 text-center">
                                <p className="text-gray-500">No hay feriantes registrados para esta ubicación aún.</p>
                            </div>
                        )}
                    </section>

                    {/* Reseñas */}
                    <section>
                        <div className="flex items-center gap-2 mb-6">
                            <MessageSquare className="text-green-600" />
                            <h2 className="text-2xl font-bold text-gray-800">Opiniones de la comunidad</h2>
                        </div>

                        {user ? (
                            <ResenaForm feriaId={id} onResenaCreated={handleResenaCreated} />
                        ) : (
                            <div className="bg-blue-50 p-6 rounded-xl border border-blue-100 mb-8 text-center">
                                <p className="text-green-800 mb-4">¿Has visitado esta feria? Comparte tu experiencia con otros.</p>
                                <Link to="/login" className="inline-block bg-green-600 text-white px-6 py-2 rounded-lg font-bold hover:bg-green-700 transition-colors">
                                    Iniciar sesión para reseñar
                                </Link>
                            </div>
                        )}

                        <div className="space-y-4">
                            {feria.resenas?.length > 0 ? (
                                feria.resenas.map((r) => {
                                    const isUserReviewOwner = user && Number(user.id) === Number(r.usuarioId);
                                    const isUserAdmin = user && user.rol === 'admin';

                                    if (editingResenaId === r.id) {
                                        return (
                                            <div key={r.id} className="bg-white border rounded-xl p-5 shadow-sm animate-fadeIn">
                                                <ResenaForm
                                                    feriaId={id}
                                                    resena={r}
                                                    onResenaCreated={handleResenaUpdated}
                                                    onCancel={() => setEditingResenaId(null)}
                                                />
                                            </div>
                                        );
                                    }

                                    return (
                                        <div key={r.id} className="bg-white border rounded-xl p-5 shadow-sm">
                                            <div className="flex items-center justify-between mb-3">
                                                <div className="flex items-center gap-2">
                                                    <div className="w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center text-gray-600 font-bold text-xs">
                                                        {r.usuario?.nombre.charAt(0)}
                                                    </div>
                                                    <span className="font-bold text-gray-900">{r.usuario?.nombre}</span>
                                                </div>
                                                <div className="flex items-center gap-4">
                                                    <div className="flex text-yellow-400">
                                                        {Array.from({ length: 5 }).map((_, i) => (
                                                            <Star key={i} size={14} fill={i < r.calificacion ? "currentColor" : "none"} />
                                                        ))}
                                                    </div>
                                                    {(isUserReviewOwner || isUserAdmin) && (
                                                        <div className="flex items-center gap-1">
                                                            {isUserReviewOwner && (
                                                                <button
                                                                    onClick={() => setEditingResenaId(r.id)}
                                                                    className="text-gray-400 hover:text-blue-600 transition-colors p-1"
                                                                    title="Editar reseña"
                                                                >
                                                                    <Edit size={16} />
                                                                </button>
                                                            )}
                                                            <button
                                                                onClick={() => handleDeleteResena(r.id)}
                                                                className="text-gray-400 hover:text-red-600 transition-colors p-1"
                                                                title="Eliminar reseña"
                                                            >
                                                                <Trash2 size={16} />
                                                            </button>
                                                        </div>
                                                    )}
                                                </div>
                                            </div>
                                            <p className="text-gray-700 text-sm leading-relaxed italic">"{r.comentario}"</p>
                                            <p className="text-[10px] text-gray-400 mt-3 text-right">
                                                Publicado el {new Date(r.createdAt).toLocaleDateString()}
                                            </p>
                                        </div>
                                    );
                                })
                            ) : (
                                <p className="text-center text-gray-500 py-10">Sé el primero en dejar una reseña para esta feria.</p>
                            )}
                        </div>
                    </section>
                </div>

                {/* Columna Derecha: Información Lateral / Mapa (Opcional) */}
                <div className="space-y-6">
                    <div className="bg-gradient-to-br from-green-600 to-green-800 rounded-2xl p-6 text-white shadow-lg">
                        <h3 className="text-xl font-bold mb-4">¿Cómo llegar?</h3>
                        <p className="text-blue-100 text-sm mb-6">
                            Esta ubicación se encuentra en {ubicacionSeleccionada.callePrincipal}. Puedes usar nuestro mapa interactivo para ver la ruta exacta.
                        </p>
                        <Link to="/mapa" className="block text-center bg-white text-green-700 font-bold py-3 rounded-xl hover:bg-blue-50 transition-colors">
                            Ver en el Mapa
                        </Link>
                    </div>

                    <div className="bg-white border rounded-2xl p-6 shadow-sm">
                        <h3 className="font-bold text-gray-900 mb-4">Consejos ConYapa</h3>
                        <ul className="text-sm text-gray-600 space-y-3">
                            <li className="flex gap-2">
                                <span className="text-green-500 font-bold">•</span>
                                Lleva tus propias bolsas reutilizables.
                            </li>
                            <li className="flex gap-2">
                                <span className="text-green-500 font-bold">•</span>
                                Llega temprano para encontrar los mejores productos.
                            </li>
                            <li className="flex gap-2">
                                <span className="text-green-500 font-bold">•</span>
                                Consulta los horarios antes de salir.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    )
}
