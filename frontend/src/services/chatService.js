import api from './api'

export const chatService = {
  sendMessage: (message, history) =>
    api.post('/ia/chat', { message, history }),
  getRecommendations: (preferences) =>
    api.post('/ia/recomendaciones', { preferences }),
}
