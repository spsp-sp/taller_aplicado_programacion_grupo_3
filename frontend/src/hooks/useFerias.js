import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { feriaService } from '@services/feriaService'
import toast from 'react-hot-toast'

export function useFerias(params) {
  return useQuery({
    queryKey: ['ferias', params],
    queryFn: () => feriaService.getAll(params).then((r) => r.data),
  })
}

export function useFeria(id) {
  return useQuery({
    queryKey: ['feria', id],
    queryFn: () => feriaService.getById(id).then((r) => r.data),
    enabled: !!id,
  })
}

export function useFeriasNearby({ lat, lng, radius }) {
  return useQuery({
    queryKey: ['ferias-nearby', lat, lng, radius],
    queryFn: () => feriaService.getNearby({ lat, lng, radius }).then((r) => r.data),
    enabled: !!lat && !!lng,
  })
}

export function useCreateFeria() {
  const qc = useQueryClient()
  return useMutation({
    mutationFn: feriaService.create,
    onSuccess: () => {
      qc.invalidateQueries({ queryKey: ['ferias'] })
      toast.success('Feria creada correctamente')
    },
    onError: (err) => toast.error(err.response?.data?.message || 'Error al crear feria'),
  })
}
