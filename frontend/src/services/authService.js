import api from './api'

export const authService = {
  login: (credentials) => api.post('/auth/login', credentials),
  register: (data) => api.post('/auth/register', data),
  me: () => api.get('/auth/me'),
  logout: () => api.post('/auth/logout'),
  forgotPassword: (email) => api.post('/auth/forgot-password', { email }),
  changePassword: ({ passwordActual, passwordNuevo }) => api.post('/auth/change-password', { passwordActual, passwordNuevo }),
}
