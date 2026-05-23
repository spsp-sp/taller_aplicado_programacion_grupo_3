import api from './api'

const getFeriantes = async (params = {}) => {
  const { data } = await api.get('/feriantes', { params })
  return data
}

const getFerianteById = async (id) => {
  const { data } = await api.get(`/feriantes/${id}`)
  return data
}

const approveFeriante = async (id) => {
  const { data } = await api.patch(`/feriantes/${id}/aprobar`)
  return data
}

const rejectFeriante = async (id) => {
  const { data } = await api.patch(`/feriantes/${id}/rechazar`)
  return data
}

const createPerfil = async (perfilData) => {
  const { data } = await api.post('/feriantes', perfilData)
  return data
}

export default {
  getFeriantes,
  getFerianteById,
  createPerfil,
  approveFeriante,
  rejectFeriante,
}
