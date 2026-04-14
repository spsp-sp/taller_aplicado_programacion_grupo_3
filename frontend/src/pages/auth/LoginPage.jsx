import { useLogin } from '@hooks/useAuth'
import { Link } from 'react-router-dom'

export default function LoginPage() {
  const { mutate: login, isPending } = useLogin()

  const handleSubmit = (e) => {
    e.preventDefault()
    const form = new FormData(e.target)
    login({ email: form.get('email'), password: form.get('password') })
  }

  return (
    <>
      <h2 className="text-xl font-bold text-gray-800 mb-1">Iniciar sesión</h2>
      <p className="text-sm text-gray-500 mb-6">Accede a tu cuenta ConYapa</p>

      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Correo electrónico</label>
          <input id="email" name="email" type="email" required placeholder="tu@correo.cl" className="input-field" />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Contraseña</label>
          <input id="password" name="password" type="password" required placeholder="••••••••" className="input-field" />
        </div>
        <button type="submit" disabled={isPending} className="btn-primary w-full mt-2">
          {isPending ? 'Ingresando...' : 'Iniciar sesión'}
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
