import useAuthStore from '@store/authStore'

export default function ProfilePage() {
  const { user } = useAuthStore()

  return (
    <div className="max-w-2xl mx-auto px-4 py-10">
      <h1 className="text-2xl font-bold text-gray-800 mb-6">Mi perfil</h1>
      <div className="card p-6">
        <div className="flex items-center gap-4 mb-6">
          <div className="w-16 h-16 rounded-full bg-primary-100 flex items-center justify-center text-primary-700 font-bold text-2xl">
            {user?.nombre?.charAt(0) ?? 'U'}
          </div>
          <div>
            <h2 className="font-semibold text-gray-800 text-lg">{user?.nombre}</h2>
            <p className="text-sm text-gray-500">{user?.email}</p>
            <span className="badge bg-primary-100 text-primary-700 mt-1 capitalize">{user?.rol}</span>
          </div>
        </div>
        <p className="text-sm text-gray-400">Próximamente: edición de perfil y preferencias.</p>
      </div>
    </div>
  )
}
