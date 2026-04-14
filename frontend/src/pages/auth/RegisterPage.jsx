import { useRegister } from '@hooks/useAuth'
import { Link } from 'react-router-dom'

export default function RegisterPage() {
  const { mutate: register, isPending } = useRegister()

  const handleSubmit = (e) => {
    e.preventDefault()
    const form = new FormData(e.target)
    register({
      nombre: form.get('nombre'),
      email: form.get('email'),
      password: form.get('password'),
      rol: form.get('rol'),
    })
  }

  return (
    <>
      <h2 className="text-xl font-bold text-gray-800 mb-1">Crear cuenta</h2>
      <p className="text-sm text-gray-500 mb-6">Únete a la comunidad ConYapa</p>

      <form onSubmit={handleSubmit} className="flex flex-col gap-4">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Nombre completo</label>
          <input id="nombre" name="nombre" type="text" required placeholder="Juan Pérez" className="input-field" />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Correo electrónico</label>
          <input id="reg-email" name="email" type="email" required placeholder="tu@correo.cl" className="input-field" />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Contraseña</label>
          <input id="reg-password" name="password" type="password" required minLength={6} placeholder="Mínimo 6 caracteres" className="input-field" />
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Tipo de cuenta</label>
          <select id="rol" name="rol" className="input-field" defaultValue="cliente">
            <option value="cliente">Cliente</option>
            <option value="feriante">Feriante</option>
          </select>
        </div>
        <button type="submit" disabled={isPending} className="btn-primary w-full mt-2">
          {isPending ? 'Creando cuenta...' : 'Registrarse'}
        </button>
      </form>

      <p className="text-sm text-center text-gray-500 mt-5">
        ¿Ya tienes cuenta?{' '}
        <Link to="/login" className="text-primary-600 font-medium hover:underline">
          Inicia sesión
        </Link>
      </p>
    </>
  )
}
