import { useState } from 'react'
import { useLogin, useForgotPassword } from '@hooks/useAuth'
import { Link } from 'react-router-dom'

export default function LoginPage() {
  const [showForgot, setShowForgot] = useState(false)
  const [forgotEmail, setForgotEmail] = useState('')
  const [successMessage, setSuccessMessage] = useState('')

  const { mutate: login, isPending: loginPending, error: loginError } = useLogin()
  const { mutate: forgotPassword, isPending: forgotPending, error: forgotError } = useForgotPassword()

  const handleSubmit = (e) => {
    e.preventDefault()
    const form = new FormData(e.target)
    login({ email: form.get('email'), password: form.get('password') })
  }

  const handleForgotSubmit = (e) => {
    e.preventDefault()
    setSuccessMessage('')
    forgotPassword(forgotEmail, {
      onSuccess: (data) => {
        setSuccessMessage(`Se ha restablecido tu contraseña. Tu nueva clave temporal es: "${data.data.tempPassword}". Por favor, úsala para iniciar sesión.`)
        setForgotEmail('')
      }
    })
  }

  if (showForgot) {
    return (
      <>
        <h2 className="text-xl font-bold text-gray-800 mb-1">Recuperar contraseña</h2>
        <p className="text-sm text-gray-500 mb-6">Ingresa tu correo para restablecer tu clave</p>

        {forgotError && (
          <div className="bg-red-50 text-red-700 p-3 rounded-lg border border-red-200 text-sm mb-4">
            {forgotError.response?.data?.message || 'Error al procesar la solicitud.'}
          </div>
        )}

        {successMessage && (
          <div className="bg-green-50 text-green-800 p-4 rounded-lg border border-green-200 text-sm mb-4 font-medium">
            {successMessage}
          </div>
        )}

        <form onSubmit={handleForgotSubmit} className="flex flex-col gap-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Correo electrónico</label>
            <input
              id="forgot-email"
              name="forgot-email"
              type="email"
              required
              value={forgotEmail}
              onChange={(e) => setForgotEmail(e.target.value)}
              placeholder="tu@correo.cl"
              className="input-field"
            />
          </div>
          <button type="submit" disabled={forgotPending} className="btn-primary w-full mt-2">
            {forgotPending ? 'Procesando...' : 'Restablecer contraseña'}
          </button>
        </form>

        <button
          onClick={() => {
            setShowForgot(false)
            setSuccessMessage('')
          }}
          className="text-sm text-center text-primary-600 font-medium hover:underline w-full mt-5 block bg-transparent border-0 cursor-pointer"
        >
          Volver al inicio de sesión
        </button>
      </>
    )
  }

  return (
    <>
      <h2 className="text-xl font-bold text-gray-800 mb-1">Iniciar sesión</h2>
      <p className="text-sm text-gray-500 mb-6">Accede a tu cuenta ConYapa</p>

      {loginError && (
        <div className="bg-red-50 text-red-700 p-3 rounded-lg border border-red-200 text-sm mb-4">
          {loginError.response?.data?.message || 'Credenciales incorrectas.'}
        </div>
      )}

      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Correo electrónico</label>
          <input id="email" name="email" type="email" required placeholder="tu@correo.cl" className="input-field" />
        </div>
        <div>
          <div className="flex justify-between items-center mb-1">
            <label className="block text-sm font-medium text-gray-700">Contraseña</label>
            <button
              type="button"
              onClick={() => setShowForgot(true)}
              className="text-xs text-primary-600 hover:underline font-medium bg-transparent border-0 cursor-pointer"
            >
              ¿Olvidaste tu contraseña?
            </button>
          </div>
          <input id="password" name="password" type="password" required placeholder="••••••••" className="input-field" />
        </div>
        <button type="submit" disabled={loginPending} className="btn-primary w-full mt-2">
          {loginPending ? 'Ingresando...' : 'Iniciar sesión'}
        </button>
      </form>

      <p className="text-sm text-center text-gray-500 mt-5">
        ¿No tienes cuenta?{' '}
        <Link to="/registro" className="text-primary-600 font-medium hover:underline">
          Regístrate aquí
        </Link>
      </p>
    </>
  )
}
