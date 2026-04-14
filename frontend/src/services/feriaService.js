import api from './api'

export const feriaService = {
  getAll: (params) => api.get('/ferias', { params }),
  getById: (id) => api.get(`/ferias/${id}`),
  create: (data) => api.post('/ferias', data),
  update: (id, data) => api.put(`/ferias/${id}`, data),
  delete: (id) => api.delete(`/ferias/${id}`),
  getNearby: ({ lat, lng, radius }) =>
    api.get('/ferias/nearby', { params: { lat, lng, radius } }),
}
