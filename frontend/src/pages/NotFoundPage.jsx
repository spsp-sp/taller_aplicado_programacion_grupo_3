import { Link } from 'react-router-dom'

export default function NotFoundPage() {
  return (
    <div className="min-h-[60vh] flex flex-col items-center justify-center text-center px-4">
      <h1 className="text-8xl font-bold text-primary-200 mb-4">404</h1>
      <h2 className="text-2xl font-semibold text-gray-700 mb-2">Página no encontrada</h2>
      <p className="text-gray-500 mb-6">La página que buscas no existe o fue movida.</p>
      <Link to="/" className="btn-primary">Volver al inicio</Link>
    </div>
  )
}
