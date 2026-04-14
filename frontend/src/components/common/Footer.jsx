import { MapPin } from 'lucide-react'
import { Link } from 'react-router-dom'

export default function Footer() {
  return (
    <footer className="bg-gray-800 text-gray-300 mt-auto">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div>
            <div className="flex items-center gap-2 text-white font-bold text-lg mb-3">
              <MapPin size={18} className="text-secondary-400" />
              ConYapa
            </div>
            <p className="text-sm text-gray-400">
              Conectando comunidades con sus ferias locales. Encuentra productos frescos y apoya a los feriantes de tu barrio.
            </p>
          </div>

          <div>
            <h3 className="text-white font-semibold mb-3">Explorar</h3>
            <ul className="space-y-2 text-sm">
              <li><Link to="/mapa" className="hover:text-white transition-colors">Mapa de ferias</Link></li>
              <li><Link to="/ferias" className="hover:text-white transition-colors">Listado de ferias</Link></li>
              <li><Link to="/feriantes" className="hover:text-white transition-colors">Feriantes</Link></li>
            </ul>
          </div>

          <div>
            <h3 className="text-white font-semibold mb-3">Cuenta</h3>
            <ul className="space-y-2 text-sm">
              <li><Link to="/login" className="hover:text-white transition-colors">Iniciar sesión</Link></li>
              <li><Link to="/registro" className="hover:text-white transition-colors">Registrarse</Link></li>
              <li><Link to="/chat" className="hover:text-white transition-colors">Asistente IA</Link></li>
            </ul>
          </div>
        </div>

        <div className="border-t border-gray-700 mt-8 pt-6 text-center text-xs text-gray-500">
          © {new Date().getFullYear()} ConYapa. Proyecto académico DUOC UC.
        </div>
      </div>
    </footer>
  )
}
