import { Link } from 'react-router-dom'
import { MapPin, Search, Star, ShoppingBag } from 'lucide-react'

export default function HomePage() {
  return (
    <div>
      {/* Hero */}
      <section className="bg-gradient-to-br from-primary-600 to-primary-800 text-white py-20 px-4">
        <div className="max-w-4xl mx-auto text-center">
          <h1 className="text-4xl sm:text-5xl font-bold mb-4 leading-tight">
            Descubre las ferias de tu comunidad
          </h1>
          <p className="text-primary-100 text-lg mb-8 max-w-2xl mx-auto">
            Encuentra productos frescos, apoya a los feriantes locales y
            planifica tus compras con ayuda de nuestra IA.
          </p>
          <div className="flex flex-col sm:flex-row gap-3 justify-center">
            <Link to="/mapa" className="btn-secondary text-base px-6 py-3">
              <MapPin size={18} /> Ver mapa de ferias
            </Link>
            <Link to="/ferias" className="bg-white text-primary-700 font-medium px-6 py-3 rounded-lg hover:bg-primary-50 transition-colors flex items-center gap-2">
              <Search size={18} /> Explorar ferias
            </Link>
          </div>
        </div>
      </section>


    </div>
  )
}
