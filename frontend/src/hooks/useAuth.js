import { useMutation } from '@tanstack/react-query'
import { authService } from '@services/authService'
import useAuthStore from '@store/authStore'
import { useNavigate } from 'react-router-dom'
import toast from 'react-hot-toast'

export function useLogin() {
  const { setAuth } = useAuthStore()
  const navigate = useNavigate()

  return useMutation({
    mutationFn: authService.login,
    onSuccess: ({ data }) => {
      setAuth(data.user, data.token)
      toast.success(`¡Bienvenido, ${data.user.nombre}!`)
      navigate('/')
    },
    onError: (err) =>
      toast.error(err.response?.data?.message || 'Credenciales incorrectas'),
  })
}

export function useRegister() {
  const { setAuth } = useAuthStore()
  const navigate = useNavigate()

  return useMutation({
    mutationFn: authService.register,
    onSuccess: ({ data }) => {
      setAuth(data.user, data.token)
      toast.success('¡Cuenta creada correctamente!')
      navigate('/')
    },
    onError: (err) =>
      toast.error(err.response?.data?.message || 'Error al registrarse'),
  })
}
