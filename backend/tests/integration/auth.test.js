const request = require('supertest')
const app = require('../../src/app')
const { sequelize } = require('../../src/database/connection')
const { Usuario } = require('../../src/models')

beforeAll(async () => {
  await sequelize.sync({ force: true })
})

afterAll(async () => {
  await sequelize.close()
})

describe('POST /api/auth/register', () => {
  it('debe registrar un usuario nuevo', async () => {
    const res = await request(app).post('/api/auth/register').send({
      nombre: 'Test User',
      email: 'test@conyapa.cl',
      password: 'password123',
    })

    expect(res.statusCode).toBe(201)
    expect(res.body).toHaveProperty('token')
    expect(res.body.user.email).toBe('test@conyapa.cl')
  })

  it('debe rechazar un email duplicado', async () => {
    const res = await request(app).post('/api/auth/register').send({
      nombre: 'Test User 2',
      email: 'test@conyapa.cl',
      password: 'password123',
    })

    expect(res.statusCode).toBe(409)
  })

  it('debe rechazar datos inválidos', async () => {
    const res = await request(app).post('/api/auth/register').send({
      email: 'no-es-un-email',
      password: '123',
    })

    expect(res.statusCode).toBe(422)
  })
})

describe('POST /api/auth/login', () => {
  it('debe loguear con credenciales correctas', async () => {
    const res = await request(app).post('/api/auth/login').send({
      email: 'test@conyapa.cl',
      password: 'password123',
    })

    expect(res.statusCode).toBe(200)
    expect(res.body).toHaveProperty('token')
  })

  it('debe rechazar credenciales incorrectas', async () => {
    const res = await request(app).post('/api/auth/login').send({
      email: 'test@conyapa.cl',
      password: 'wrongpassword',
    })

    expect(res.statusCode).toBe(401)
  })
})
