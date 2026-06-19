const router = require('express').Router()
const { body } = require('express-validator')
const { getAll, getNearby, getById, create, update, remove } = require('../controllers/feria.controller')
const { verifyToken, requireRole } = require('../middleware/auth')
const validate = require('../middleware/validate')

const feriaValidation = [
    body('nombre').trim().notEmpty().withMessage('El nombre es requerido.'),
    body('comunaId').isInt().withMessage('La comuna es requerida.'),
    body('tipo').isIn(['libre', 'municipal', 'organica', 'artesanal']).withMessage('Tipo de feria inválido.'),
]

// Rutas Públicas
router.get('/', getAll)
router.get('/nearby', getNearby)
router.get('/:id', getById)

// Rutas Administrativas
router.post('/', verifyToken, requireRole('admin'), feriaValidation, validate, create)
router.put('/:id', verifyToken, requireRole('admin'), feriaValidation, validate, update)
router.delete('/:id', verifyToken, requireRole('admin'), remove)

module.exports = router