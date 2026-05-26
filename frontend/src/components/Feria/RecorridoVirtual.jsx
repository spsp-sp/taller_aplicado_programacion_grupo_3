
CarouselRecorrido.jsx
import { useState } from 'react'
import { ChevronLeft, ChevronRight, Footprints } from 'lucide-react'

// Importación de imágenes
import recorrido1 from "../../assets/image/recorrido/recorrido1.jpg";
import recorrido2 from "../../assets/image/recorrido/recorrido2.jpeg";
import recorrido3 from "../../assets/image/recorrido/recorrido3.jpg";
import recorrido4 from "../../assets/image/recorrido/recorrido4.jpg";
import recorrido5 from "../../assets/image/recorrido/recorrido5.jpg";

const ImagenesRecorrido = [
    { id: 1, src: recorrido1, title: 'Variedad de cítricos y frutas de temporada' },
    { id: 2, src: recorrido2, title: 'Pasillo principal y ambiente de la feria' },
    { id: 3, src: recorrido3, title: 'Selección de frutas frescas del día' },
    { id: 4, src: recorrido4, title: 'Verduras y hortalizas' },
    { id: 5, src: recorrido5, title: 'Colores y sabores de nuestra tierra' },
]

export default function CarouselRecorrido() {
    const [currentIndex, setCurrentIndex] = useState(0)

    const goToPrevious = () => {
        setCurrentIndex((prevIndex) =>
            prevIndex === 0 ? ImagenesRecorrido.length - 1 : prevIndex - 1
        )
    }

    const goToNext = () => {
        setCurrentIndex((prevIndex) =>
            prevIndex === ImagenesRecorrido.length - 1 ? 0 : prevIndex + 1
        )
    }

    const goToSlide = (index) => {
        setCurrentIndex(index)
    }

    const currentImage = ImagenesRecorrido[currentIndex]

    return (
        <div>
            <h3 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-6 flex items-center gap-2">
                <Footprints size={18} className="text-green-600" /> Recorrido Virtual
            </h3>

            <div className="relative bg-gray-100 rounded-2xl overflow-hidden group">
                {/* Imagen Principal */}
                <div className="relative w-full h-64 md:h-80 overflow-hidden bg-gray-200">
                    <img
                        src={currentImage.src}
                        alt={currentImage.title}
                        className="w-full h-full object-cover transition-opacity duration-500"
                    />

                    {/* Overlay con título */}
                    <div className="absolute bottom-0 left-0 right-0 bg-gradient-to-t from-black/60 to-transparent p-4">
                        <p className="text-white font-semibold text-sm">{currentImage.title}</p>
                    </div>

                    {/* Contador */}
                    <div className="absolute top-4 right-4 bg-black/50 text-white px-3 py-1 rounded-full text-xs font-bold">
                        {currentIndex + 1} / {ImagenesRecorrido.length}
                    </div>
                </div>

                {/* Botones Navegación */}
                <button
                    onClick={goToPrevious}
                    className="absolute left-4 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 p-2 rounded-full shadow-lg transition-all opacity-0 group-hover:opacity-100 z-10"
                >
                    <ChevronLeft size={24} />
                </button>

                <button
                    onClick={goToNext}
                    className="absolute right-4 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 p-2 rounded-full shadow-lg transition-all opacity-0 group-hover:opacity-100 z-10"
                >
                    <ChevronRight size={24} />
                </button>
            </div>

            {/* Puntos Indicadores */}
            <div className="flex justify-center gap-2 mt-4">
                {ImagenesRecorrido.map((_, index) => (
                    <button
                        key={index}
                        onClick={() => goToSlide(index)}
                        className={`h-2 rounded-full transition-all ${
                            index === currentIndex ? 'bg-green-600 w-8' : 'bg-gray-300 w-2 hover:bg-gray-400'
                        }`}
                    />
                ))}
            </div>

            {/* Miniaturas */}
            <div className="flex gap-2 mt-6 overflow-x-auto pb-2">
                {ImagenesRecorrido.map((image, index) => (
                    <button
                        key={image.id}
                        onClick={() => goToSlide(index)}
                        className={`flex-shrink-0 w-16 h-16 rounded-lg overflow-hidden border-2 transition-all ${
                            index === currentIndex ? 'border-green-600 shadow-lg' : 'border-gray-200 hover:border-gray-400'
                        }`}
                    >
                        <img
                            src={image.src}
                            alt={image.title}
                            className="w-full h-full object-cover"
                        />
                    </button>
                ))}
            </div>
        </div>
    )
}