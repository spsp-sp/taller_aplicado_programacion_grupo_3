import { Link, NavLink, useNavigate } from 'react-router-dom'
import { MapPin, ShoppingCart, MessageSquare, LogOut, User, Menu, X } from 'lucide-react'
import { useState } from 'react'
import useAuthStore from '@store/authStore'

export default function Navbar() {
  const [menuOpen, setMenuOpen] = useState(false)
  const { user, logout } = useAuthStore()
  const navigate = useNavigate()

  const navLinks = [
    { to: '/mapa', label: 'Mapa', icon: <MapPin size={16} /> },
    { to: '/ferias', label: 'Ferias', icon: null },
    { to: '/feriantes', label: 'Feriantes', icon: null },
  ]

  const handleLogout = () => {
    logout()
    navigate('/')
  }

  return (
    <header className="bg-white border-b border-gray-100 shadow-sm sticky top-0 z-50">
      <nav className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
        {/* Logo */}
        <Link to="/" className="flex items-center gap-2 font-bold text-xl text-primary-700">
          <MapPin className="text-secondary-500" size={22} />
          ConYapa
        </Link>

        {/* Desktop nav */}
        <div className="hidden md:flex items-center gap-6">
          {navLinks.map(({ to, label, icon }) => (
            <NavLink
              key={to}
              to={to}
              className={({ isActive }) =>
                `flex items-center gap-1 text-sm font-medium transition-colors ${
                  isActive ? 'text-primary-600' : 'text-gray-600 hover:text-primary-600'
                }`
              }
            >
              {icon}
              {label}
            </NavLink>
          ))}
        </div>

        {/* Actions */}
        <div className="hidden md:flex items-center gap-3">
          {user ? (
            <>
              <NavLink to="/chat" className="p-2 text-gray-500 hover:text-primary-600 transition-colors">
                <MessageSquare size={20} />
              </NavLink>
              <NavLink to="/lista-compras" className="p-2 text-gray-500 hover:text-primary-600 transition-colors">
                <ShoppingCart size={20} />
              </NavLink>
              <NavLink to="/perfil" className="p-2 text-gray-500 hover:text-primary-600 transition-colors">
                <User size={20} />
              </NavLink>
              <button onClick={handleLogout} className="p-2 text-gray-500 hover:text-red-500 transition-colors">
                <LogOut size={20} />
              </button>
            </>
          ) : (
            <>
              <Link to="/login" className="btn-outline py-1.5 px-3 text-sm">Iniciar sesión</Link>
              <Link to="/registro" className="btn-primary py-1.5 px-3 text-sm">Registrarse</Link>
            </>
          )}
        </div>

        {/* Mobile menu button */}
        <button
          className="md:hidden p-2 text-gray-600"
          onClick={() => setMenuOpen(!menuOpen)}
        >
          {menuOpen ? <X size={22} /> : <Menu size={22} />}
        </button>
      </nav>

      {/* Mobile menu */}
      {menuOpen && (
        <div className="md:hidden border-t border-gray-100 bg-white px-4 py-3 flex flex-col gap-3">
          {navLinks.map(({ to, label }) => (
            <NavLink
              key={to}
              to={to}
              onClick={() => setMenuOpen(false)}
              className={({ isActive }) =>
                `text-sm font-medium py-1 ${isActive ? 'text-primary-600' : 'text-gray-600'}`
              }
            >
              {label}
            </NavLink>
          ))}
          <div className="flex gap-2 pt-2 border-t border-gray-100">
            {user ? (
              <button onClick={handleLogout} className="btn-outline text-sm py-1.5 w-full">Cerrar sesión</button>
            ) : (
              <>
                <Link to="/login" onClick={() => setMenuOpen(false)} className="btn-outline text-sm py-1.5 flex-1 text-center">Iniciar sesión</Link>
                <Link to="/registro" onClick={() => setMenuOpen(false)} className="btn-primary text-sm py-1.5 flex-1 text-center">Registrarse</Link>
              </>
            )}
          </div>
        </div>
      )}
    </header>
  )
}
