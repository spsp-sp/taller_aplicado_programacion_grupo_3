import { Outlet } from 'react-router-dom'

export default function AuthLayout() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-primary-50 to-secondary-50 p-4">
      <div className="w-full max-w-md">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-primary-700">ConYapa</h1>
          <p className="text-gray-500 mt-1">Tu feria cercana</p>
        </div>
        <div className="card p-8">
          <Outlet />
        </div>
      </div>
    </div>
  )
}
