import { useState } from 'react'
import useAuthStore from '@store/authStore'
import { useChangePassword } from '@hooks/useAuth'
import { Lock, KeyRound } from 'lucide-react'

export default function ProfilePage() {
  const { user } = useAuthStore()
  const { mutate: changePassword, isPending } = useChangePassword()

  const [passwordActual, setPasswordActual] = useState('')
  const [passwordNuevo, setPasswordNuevo] = useState('')
  const [confirmPassword, setConfirmPassword] = useState('')
  const [errorLocal, setErrorLocal] = useState('')

  const handleSubmit = (e) => {
    e.preventDefault()
    setErrorLocal('')

    if (passwordNuevo.length < 6) {
      setErrorLocal('La nueva contraseña debe tener al menos 6 caracteres.')
      return
    }

    if (passwordNuevo !== confirmPassword) {
      setErrorLocal('Las contraseñas nuevas no coinciden.')
      return
    }

    changePassword(
      { passwordActual, passwordNuevo },
      {
        onSuccess: () => {
          setPasswordActual('')
          setPasswordNuevo('')
          setConfirmPassword('')
        },
      }
    )
  }

  return (
    <div className="max-w-2xl mx-auto px-4 py-10">
      <h1 className="text-2xl font-bold text-gray-800 mb-6">Mi perfil</h1>
      
      {/* Tarjeta de Información de Usuario */}
      <div className="card p-6 mb-6">
        <div className="flex items-center gap-4">
          <div className="w-16 h-16 rounded-full bg-primary-100 flex items-center justify-center text-primary-700 font-bold text-2xl">
            {user?.nombre?.charAt(0) ?? 'U'}
          </div>
          <div>
            <h2 className="font-semibold text-gray-800 text-lg">{user?.nombre}</h2>
            <p className="text-sm text-gray-500">{user?.email}</p>
            <span className="badge bg-primary-100 text-primary-700 mt-1 capitalize">{user?.rol}</span>
          </div>
        </div>
      </div>

      {/* Tarjeta de Seguridad / Cambiar Contraseña */}
      <div className="card p-6">
        <div className="flex items-center gap-2 mb-4 border-b border-gray-100 pb-3">
          <KeyRound className="w-5 h-5 text-primary-600" />
          <h2 className="font-bold text-gray-800 text-lg">Cambiar contraseña</h2>
        </div>
        <p className="text-sm text-gray-500 mb-6">
          Puedes cambiar tu clave genérica o actual aquí. Asegúrate de usar una contraseña segura.
        </p>

        {errorLocal && (
          <div className="bg-red-50 text-red-700 p-3 rounded-lg border border-red-200 text-sm mb-4">
            {errorLocal}
          </div>
        )}

        <form onSubmit={handleSubmit} className="flex flex-col gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Contraseña actual
            </label>
            <div className="relative">
              <span className="absolute inset-y-0 left-0 pl-3 flex items-center text-gray-400">
                <Lock className="w-4 h-4" />
              </span>
              <input
                type="password"
                required
                value={passwordActual}
                onChange={(e) => setPasswordActual(e.target.value)}
                placeholder="Ingresa tu contraseña actual o genérica"
                className="input-field pl-9"
              />
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Nueva contraseña
            </label>
            <div className="relative">
              <span className="absolute inset-y-0 left-0 pl-3 flex items-center text-gray-400">
                <Lock className="w-4 h-4" />
              </span>
              <input
                type="password"
                required
                value={passwordNuevo}
                onChange={(e) => setPasswordNuevo(e.target.value)}
                placeholder="Mínimo 6 caracteres"
                className="input-field pl-9"
              />
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Confirmar nueva contraseña
            </label>
            <div className="relative">
              <span className="absolute inset-y-0 left-0 pl-3 flex items-center text-gray-400">
                <Lock className="w-4 h-4" />
              </span>
              <input
                type="password"
                required
                value={confirmPassword}
                onChange={(e) => setConfirmPassword(e.target.value)}
                placeholder="Confirma tu nueva contraseña"
                className="input-field pl-9"
              />
            </div>
          </div>

          <button
            type="submit"
            disabled={isPending}
            className="btn-primary w-full mt-2"
          >
            {isPending ? 'Actualizando...' : 'Actualizar contraseña'}
          </button>
        </form>
      </div>
    </div>
  )
}

