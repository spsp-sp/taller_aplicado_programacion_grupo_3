import { Outlet } from 'react-router-dom'
import logoImg from '../../assets/image/logo.png'
import logoText from '../../assets/image/logoTexto.png'

export default function AuthLayout() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-primary-50 to-secondary-50 p-4">
      <div className="w-full max-w-md">
        <div className="flex flex-col items-center justify-center text-center mb-8">
          <img src={logoImg} alt="ConYapa Logo" className="h-16 w-auto mb-2" />
          <img src={logoText} alt="ConYapa" className="h-9 w-auto" />
          <p className="text-gray-500 mt-2 text-sm font-medium">Tu feria cercana</p>
        </div>
        <div className="card p-8">
          <Outlet />
        </div>
      </div>
    </div>
  )
}
