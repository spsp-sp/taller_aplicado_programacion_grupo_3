const router = require('express').Router()
const { body } = require('express-validator')
const { getAll, getNearby, getById, create, update, remove } = require('../controllers/feria.controller')
const { verifyToken, requireRole } = require('../middleware/auth')
const validate = require('../middleware/validate')

const feriaValidation = [
  body('nombre').trim().notEmpty().withMessage('El nombre es requerido.'),
  body('direccion').trim().notEmpty().withMessage('La dirección es requerida.'),
  body('latitud').isFloat({ min: -90, max: 90 }).withMessage('Latitud inválida.'),
  body('longitud').isFloat({ min: -180, max: 180 }).withMessage('Longitud inválida.'),
]

// Public
router.get('/',        getAll)
router.get('/nearby',  getNearby)
router.get('/:id',     getById)

// Protected — only admins can create/edit/delete
router.post('/',    verifyToken, requireRole('admin'), feriaValidation, validate, create)
router.put('/:id',  verifyToken, requireRole('admin'), feriaValidation, validate, update)
router.delete('/:id', verifyToken, requireRole('admin'), remove)

module.exports = router
