import api from './api'

export const chatService = {
  sendMessage: (message, history, lat, lng) =>
    api.post('/ia/chat', { message, history, lat, lng }),
  getRecommendations: (preferences) =>
    api.post('/ia/recomendaciones', { preferences }),
}
