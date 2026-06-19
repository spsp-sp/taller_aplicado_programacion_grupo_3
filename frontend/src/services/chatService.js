import api from './api'

export const chatService = {
  sendMessage: (message, history, lat, lng, items) =>
    api.post('/ia/chat', { message, history, lat, lng, items }),
  getRecommendations: (preferences) =>
    api.post('/ia/recomendaciones', { preferences }),
}
