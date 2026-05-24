import { useState, useEffect } from 'react'
import { useNavigate } from 'react-router-dom'
import { useMutation } from '@tanstack/react-query'
import toast from 'react-hot-toast'
import ferianteService from '@services/ferianteService'
import { feriaService } from '@services/feriaService'
import useAuthStore from '@store/authStore'
import { useQueryClient } from '@tanstack/react-query'

export default function RegistroFeriantePage() {
  const navigate = useNavigate()
  const { user } = useAuthStore()
  const [ferias, setFerias] = useState([])
  const [loadingFerias, setLoadingFerias] = useState(true)
  const queryClient = useQueryClient() // Recuérdalo importar de '@tanstack/react-query'

  const [form, setForm] = useState({
    nombre: '',
    rubro: '',
    descripcion: '',
    telefono: '',
  })

  const [selectedFerias, setSelectedFerias] = useState([])
  const [selectedUbicaciones, setSelectedUbicaciones] = useState([])

  useEffect(() => {
    feriaService.getAll()
      .then(({ data }) => setFerias(data))
      .catch(() => toast.error('Error al cargar ferias'))
      .finally(() => setLoadingFerias(false))
  }, [])

  // Al deseleccionar una feria, quitamos sus ubicaciones de la selección
  useEffect(() => {
    const validUbiIds = ferias
      .filter((f) => selectedFerias.includes(f.id))
      .flatMap((f) => f.ubicaciones?.map((u) => u.id) || [])

    setSelectedUbicaciones((prev) => prev.filter((id) => validUbiIds.includes(id)))
  }, [selectedFerias, ferias])

  const { mutate: crearPerfil, isPending } = useMutation({
    mutationFn: ferianteService.createPerfil,
    onSuccess: () => {
      toast.success('¡Solicitud enviada! Un administrador revisará tu perfil.', { duration: 2000 })
      // Invalida la lista de feriantes del admin para que se descargue de nuevo
      queryClient.invalidateQueries({ queryKey: ['feriantes-admin'] })

      navigate('/perfil')
    },
    onError: (err) =>
      toast.error(err.response?.data?.message || 'Error al crear perfil de feriante'),
  })

  const handleChange = (e) => {
    const { name, value } = e.target
    setForm((prev) => ({ ...prev, [name]: value }))
  }

  const toggleFeria = (id) => {
    setSelectedFerias((prev) =>
      prev.includes(id) ? prev.filter((fid) => fid !== id) : [...prev, id]
    )
  }

  const toggleUbicacion = (id) => {
    setSelectedUbicaciones((prev) =>
      prev.includes(id) ? prev.filter((uid) => uid !== id) : [...prev, id]
    )
  }

  const handleSubmit = (e) => {
    e.preventDefault()

    if (selectedUbicaciones.length === 0) {
      toast.error('Debes seleccionar al menos una ubicación en la que participas.')
      return
    }

    crearPerfil({
      ...form,
      ubicacionesIds: selectedUbicaciones,
    })
  }

  const rubros = [
    'Frutas y verduras',
    'Carnes y embutidos',
    'Pescados y mariscos',
    'Ropa y calzado',
    'Artesanía',
    'Flores y plantas',
    'Comida preparada',
    'Abarrotes',
    'Otro',
  ]

  // Obtenemos las ferias seleccionadas para mostrar sus ubicaciones
  const feriasSeleccionadasInfo = ferias.filter(f => selectedFerias.includes(f.id))

  return (
    <div className="max-w-3xl mx-auto px-4 py-10">
      {/* ── Stepper visual ────────────────────────────────── */}
      <div className="flex items-center justify-center mb-10">
        <div className="flex items-center">
          <div className="w-10 h-10 rounded-full bg-green-500 text-white flex items-center justify-center text-sm font-bold shadow-lg shadow-green-500/30">
            ✓
          </div>
          <span className="ml-2 text-sm font-medium text-green-600 hidden sm:inline">Cuenta creada</span>
        </div>

        <div className="w-12 sm:w-20 h-0.5 bg-gradient-to-r from-green-500 to-primary-500 mx-2" />

        <div className="flex items-center">
          <div className="w-10 h-10 rounded-full bg-primary-600 text-white flex items-center justify-center text-sm font-bold shadow-lg shadow-primary-500/30 animate-pulse">
            2
          </div>
          <span className="ml-2 text-sm font-medium text-primary-700 hidden sm:inline">Perfil feriante</span>
        </div>

        <div className="w-12 sm:w-20 h-0.5 bg-gray-200 mx-2" />

        <div className="flex items-center">
          <div className="w-10 h-10 rounded-full bg-gray-200 text-gray-400 flex items-center justify-center text-sm font-bold">
            3
          </div>
          <span className="ml-2 text-sm font-medium text-gray-400 hidden sm:inline">Aprobación</span>
        </div>
      </div>

      {/* ── Card principal ────────────────────────────────── */}
      <div className="card p-0 overflow-hidden">
        {/* Header con gradiente */}
        <div className="bg-gradient-to-r from-primary-600 to-secondary-500 px-8 py-6 text-white">
          <h1 className="text-2xl font-bold">
            🏪 Completa tu perfil de feriante
          </h1>
          <p className="mt-1 text-white/80 text-sm">
            ¡Hola, {user?.nombre}! Completa los datos de tu puesto para que los clientes puedan encontrarte.
          </p>
        </div>

        {/* Formulario */}
        <form onSubmit={handleSubmit} className="p-8 flex flex-col gap-6">

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {/* Nombre del puesto */}
            <div>
              <label htmlFor="feriante-nombre" className="block text-sm font-medium text-gray-700 mb-1">
                Nombre de tu puesto <span className="text-red-500">*</span>
              </label>
              <input
                id="feriante-nombre"
                name="nombre"
                type="text"
                required
                value={form.nombre}
                onChange={handleChange}
                placeholder='Ej: "Verdulería Don Juanito"'
                className="input-field"
              />
            </div>

            {/* Rubro */}
            <div>
              <label htmlFor="feriante-rubro" className="block text-sm font-medium text-gray-700 mb-1">
                Rubro <span className="text-red-500">*</span>
              </label>
              <select
                id="feriante-rubro"
                name="rubro"
                required
                value={form.rubro}
                onChange={handleChange}
                className="input-field"
              >
                <option value="">Selecciona un rubro</option>
                {rubros.map((r) => (
                  <option key={r} value={r}>{r}</option>
                ))}
              </select>
            </div>
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-5">
            {/* Teléfono */}
            <div>
              <label htmlFor="feriante-telefono" className="block text-sm font-medium text-gray-700 mb-1">
                Teléfono de contacto
              </label>
              <input
                id="feriante-telefono"
                name="telefono"
                type="tel"
                value={form.telefono}
                onChange={handleChange}
                placeholder="+56 9 1234 5678"
                className="input-field"
              />
            </div>

            {/* Descripción */}
            <div>
              <label htmlFor="feriante-descripcion" className="block text-sm font-medium text-gray-700 mb-1">
                Descripción de tu puesto
              </label>
              <textarea
                id="feriante-descripcion"
                name="descripcion"
                rows={2}
                value={form.descripcion}
                onChange={handleChange}
                placeholder="Especialidad, productos, etc."
                className="input-field resize-none"
              />
            </div>
          </div>

          <hr className="border-gray-100" />

          {/* Ferias - Checkboxes */}
          <div>
            <label className="block text-sm font-bold text-gray-800 mb-3">
              ¿En qué ferias trabajas? <span className="text-red-500">*</span>
              <p className="text-xs font-normal text-gray-500 mt-0.5">Puedes seleccionar más de una.</p>
            </label>

            {loadingFerias ? (
              <p className="text-sm text-gray-500">Cargando ferias...</p>
            ) : (
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 max-h-60 overflow-y-auto p-2 border border-gray-200 rounded-lg bg-gray-50">
                {ferias.map((f) => (
                  <label key={f.id} className="flex items-start gap-3 p-3 bg-white border border-gray-200 rounded-lg cursor-pointer hover:border-primary-300 hover:bg-primary-50 transition-colors">
                    <input
                      type="checkbox"
                      className="mt-1 w-4 h-4 text-primary-600 rounded border-gray-300 focus:ring-primary-500"
                      checked={selectedFerias.includes(f.id)}
                      onChange={() => toggleFeria(f.id)}
                    />
                    <div>
                      <p className="text-sm font-semibold text-gray-800">{f.nombre}</p>
                      <p className="text-xs text-gray-500">{f.comuna?.nombre}</p>
                    </div>
                  </label>
                ))}
              </div>
            )}
          </div>

          {/* Ubicaciones - Checkboxes (Solo visibles si hay ferias seleccionadas) */}
          {selectedFerias.length > 0 && (
            <div className="animate-in fade-in slide-in-from-top-4 duration-300">
              <label className="block text-sm font-bold text-gray-800 mb-3">
                ¿En qué ubicaciones específicas? <span className="text-red-500">*</span>
                <p className="text-xs font-normal text-gray-500 mt-0.5">Selecciona los tramos de calle donde te instalas.</p>
              </label>

              <div className="space-y-4 max-h-72 overflow-y-auto pr-2">
                {feriasSeleccionadasInfo.map(feria => (
                  <div key={feria.id} className="bg-gray-50 rounded-xl border border-gray-200 overflow-hidden">
                    <div className="bg-gray-100 px-4 py-2 border-b border-gray-200">
                      <p className="text-sm font-semibold text-gray-700">📍 {feria.nombre}</p>
                    </div>
                    <div className="p-4 grid grid-cols-1 gap-3">
                      {feria.ubicaciones?.length > 0 ? (
                        feria.ubicaciones.map(u => (
                          <label key={u.id} className={`flex items-start gap-3 p-3 border rounded-lg cursor-pointer transition-colors ${selectedUbicaciones.includes(u.id) ? 'bg-primary-50 border-primary-300' : 'bg-white border-gray-200 hover:border-primary-200'
                            }`}>
                            <input
                              type="checkbox"
                              className="mt-1 w-4 h-4 text-primary-600 rounded border-gray-300 focus:ring-primary-500"
                              checked={selectedUbicaciones.includes(u.id)}
                              onChange={() => toggleUbicacion(u.id)}
                            />
                            <div>
                              <p className="text-sm font-semibold text-gray-800">{u.callePrincipal}</p>
                              <p className="text-xs text-gray-500">Entre {u.calleInicio} y {u.calleTermino}</p>
                            </div>
                          </label>
                        ))
                      ) : (
                        <p className="text-sm text-gray-500 italic">Esta feria no tiene ubicaciones registradas.</p>
                      )}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          )}

          {/* Info box */}
          <div className="bg-amber-50 border border-amber-200 rounded-lg p-4 flex gap-3 mt-2">
            <span className="text-amber-500 text-xl flex-shrink-0">ℹ️</span>
            <p className="text-sm text-amber-800">
              Tu solicitud será revisada por un administrador. Recibirás una notificación cuando sea aprobada y podrás empezar a operar en la plataforma.
            </p>
          </div>

          {/* Botón submit */}
          <button
            type="submit"
            disabled={isPending}
            className="btn-primary w-full py-3 text-base mt-2 shadow-md shadow-primary-500/20"
          >
            {isPending ? (
              <span className="flex items-center justify-center gap-2">
                <svg className="animate-spin h-5 w-5" viewBox="0 0 24 24">
                  <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" fill="none" />
                  <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z" />
                </svg>
                Enviando solicitud...
              </span>
            ) : (
              '📩 Enviar solicitud de feriante'
            )}
          </button>
        </form>
      </div>
    </div>
  )
}
