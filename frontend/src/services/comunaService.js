import api from './api'

export const comunaService = {
    getAll: () => api.get('/comunas'),
}