import api from './api'

export const reseñaService = {
  getByFeria: (feriaId) => api.get(`/resenas/feria/${feriaId}`),
  create: (data) => api.post('/resenas', data),
  update: (id, data) => api.put(`/resenas/${id}`, data),
  delete: (id) => api.delete(`/resenas/${id}`),
}
