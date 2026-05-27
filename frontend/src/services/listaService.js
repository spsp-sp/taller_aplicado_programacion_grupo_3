import api from './api'

export const listaService = {
    getAll: () => api.get('/listas'),
    create: (data) => api.post('/listas', data),
    update: (id, data) => api.put(`/listas/${id}`, data),
    delete: (id) => api.delete(`/listas/${id}`),
    getSugerencias: (items) => api.post('/listas/sugerir', { items }),
}