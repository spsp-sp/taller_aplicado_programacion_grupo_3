const router = require('express').Router()
const { body } = require('express-validator')
const { register, login, me } = require('../controllers/auth.controller')
const { verifyToken } = require('../middleware/auth')
const validate = require('../middleware/validate')

router.post('/register',
  [
    body('nombre').trim().notEmpty().withMessage('El nombre es requerido.'),
    body('email').isEmail().withMessage('Email inválido.').normalizeEmail(),
    body('password').isLength({ min: 6 }).withMessage('La contraseña debe tener al menos 6 caracteres.'),
    body('rol').optional().isIn(['cliente', 'feriante']).withMessage('Rol inválido.'),
  ],
  validate,
  register
)

router.post('/login',
  [
    body('email').isEmail().withMessage('Email inválido.'),
    body('password').notEmpty().withMessage('La contraseña es requerida.'),
  ],
  validate,
  login
)

router.get('/me', verifyToken, me)

module.exports = router
