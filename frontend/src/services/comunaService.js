import api from './api'

export const comunaService = {
    getAll: async () => {
        const { data } = await api.get('/comunas')
        return data
    },
}