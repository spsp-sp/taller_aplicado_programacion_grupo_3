import { useParams, Link } from 'react-router-dom'
import {MapPin, Clock, Star, Store, MessageSquare, Apple} from 'lucide-react'
import { useFeria } from '@hooks/useFerias'
import ResenaForm from '@components/Feria/ResenaForm'
import useAuthStore from '../store/authStore'
import { useQueryClient } from '@tanstack/react-query'


export default function FeriaDetailPage() {
    const { id } = useParams()
    const { data: feria, isLoading, isError } = useFeria(id)
    const { user } = useAuthStore()
    const queryClient = useQueryClient()

    const handleResenaCreated = () => {
        queryClient.invalidateQueries(['feria', id])
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

    // Calcular promedio de calificación
    const promedio = feria.resenas?.length > 0
        ? (feria.resenas.reduce((acc, r) => acc + r.calificacion, 0) / feria.resenas.length).toFixed(1)
        : null

    return (
        <div className="max-w-5xl mx-auto px-4 py-8">
            {/* Cabecera de la Feria */}
            <div className="bg-white shadow-sm rounded-xl border p-6 mb-8">
                <div className="flex flex-col md:flex-row md:items-center justify-between gap-4 mb-6">
                    <div>
                        <div className="flex items-center gap-3 mb-2">
                            <h1 className="text-3xl font-extrabold text-gray-900">{feria.nombre}</h1>
                            <span className="px-3 py-1 bg-green-100 text-green-700 text-xs font-bold rounded-full uppercase tracking-wider">
                {feria.tipo}
              </span>
                        </div>
                        <div className="space-y-1">
                            <p className="text-gray-600 flex items-center gap-2">
                                <MapPin size={18} className="text-green-500" /> {feria.direccion}
                            </p>
                            <div className="text-gray-600 flex items-start gap-2">
                                <Clock size={18} className="text-green-500 mt-1" />
                                <div>
                                    <p className="font-medium">Horarios de atención:</p>
                                    {feria.horarios?.length > 0 ? (
                                        <ul className="text-sm mt-1">
                                            {feria.horarios.map(h => (
                                                <li key={h.id} className="capitalize">
                                                    {h.diaSemana}: {h.horaInicio.substring(0,5)} - {h.horaFin.substring(0,5)}
                                                </li>
                                            ))}
                                        </ul>
                                    ) : (
                                        <p className="text-sm italic">No hay horarios registrados</p>
                                    )}
                                </div>
                            </div>
                        </div>
                    </div>

                    {/*{promedio && (
                        <div className="bg-yellow-50 border border-yellow-100 rounded-2xl p-4 text-center flex flex-col items-center justify-center min-w-[120px]">
                            <span className="text-3xl font-bold text-yellow-700">{promedio}</span>
                            <div className="flex text-red-600 my-1">
                                {Array.from({ length: 5 }).map((_, i) => (
                                    <Apple key={i} size={16} fill={i < Math.round(promedio) ? "currentColor" : "none"} />
                                ))}
                            </div>
                            <span className="text-xs text-red-600 font-medium">{feria.resenas.length} reseñas</span>
                        </div>
                    )}*/}
                </div>

                <div className="border-t pt-6">
                    <h3 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-2">Descripción</h3>
                    <p className="text-gray-700 leading-relaxed">{feria.descripcion}</p>
                </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                {/* Columna Izquierda: Feriantes */}
                <div className="lg:col-span-2">
                    <section className="mb-10">
                        <div className="flex items-center gap-2 mb-6">
                            <Store className="text-green-600" />
                            <h2 className="text-2xl font-bold text-gray-800">Feriantes en esta feria</h2>
                        </div>

                        {feria.feriantes?.length > 0 ? (
                            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                                {feria.feriantes.map((f) => (
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
                                <p className="text-gray-500">No hay feriantes registrados para esta feria aún.</p>
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
                                feria.resenas.map((r) => (
                                    <div key={r.id} className="bg-white border rounded-xl p-5 shadow-sm">
                                        <div className="flex items-center justify-between mb-3">
                                            <div className="flex items-center gap-2">
                                                <div className="w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center text-gray-600 font-bold text-xs">
                                                    {r.usuario?.nombre.charAt(0)}
                                                </div>
                                                <span className="font-bold text-gray-900">{r.usuario?.nombre}</span>
                                            </div>
                                            <div className="flex text-yellow-400">
                                                {Array.from({ length: 5 }).map((_, i) => (
                                                    <Star key={i} size={14} fill={i < r.calificacion ? "currentColor" : "none"} />
                                                ))}
                                            </div>
                                        </div>
                                        <p className="text-gray-700 text-sm leading-relaxed italic">"{r.comentario}"</p>
                                        <p className="text-[10px] text-gray-400 mt-3 text-right">
                                            Publicado el {new Date(r.createdAt).toLocaleDateString()}
                                        </p>
                                    </div>
                                ))
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
                            Esta feria se encuentra en {feria.direccion}. Puedes usar nuestro mapa interactivo para ver la ruta exacta.
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