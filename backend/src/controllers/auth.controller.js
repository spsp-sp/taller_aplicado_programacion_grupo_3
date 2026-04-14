const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
const { Usuario } = require('../models')

const SALT_ROUNDS = 10

const generateToken = (user) =>
  jwt.sign(
    { id: user.id, email: user.email, rol: user.rol },
    process.env.JWT_SECRET,
    { expiresIn: process.env.JWT_EXPIRES_IN || '7d' }
  )

// POST /api/auth/register
const register = async (req, res, next) => {
  try {
    const { nombre, email, password, rol } = req.body

    const exists = await Usuario.findOne({ where: { email } })
    if (exists) return res.status(409).json({ message: 'El correo ya está registrado.' })

    const hashedPassword = await bcrypt.hash(password, SALT_ROUNDS)
    const user = await Usuario.create({ nombre, email, password: hashedPassword, rol: rol || 'cliente' })

    const token = generateToken(user)
    res.status(201).json({ user: { id: user.id, nombre: user.nombre, email: user.email, rol: user.rol }, token })
  } catch (err) {
    next(err)
  }
}

// POST /api/auth/login
const login = async (req, res, next) => {
  try {
    const { email, password } = req.body

    const user = await Usuario.findOne({ where: { email, activo: true } })
    if (!user) return res.status(401).json({ message: 'Credenciales incorrectas.' })

    const valid = await bcrypt.compare(password, user.password)
    if (!valid) return res.status(401).json({ message: 'Credenciales incorrectas.' })

    const token = generateToken(user)
    res.json({ user: { id: user.id, nombre: user.nombre, email: user.email, rol: user.rol }, token })
  } catch (err) {
    next(err)
  }
}

// GET /api/auth/me
const me = async (req, res, next) => {
  try {
    const user = await Usuario.findByPk(req.user.id, {
      attributes: { exclude: ['password'] },
    })
    if (!user) return res.status(404).json({ message: 'Usuario no encontrado.' })
    res.json(user)
  } catch (err) {
    next(err)
  }
}

module.exports = { register, login, me }
