const router = require('express').Router()
const ferianteController = require('../controllers/feriante.controller')
const { verifyToken, requireRole } = require('../middleware/auth')

// Rutas Públicas
router.get('/', ferianteController.getAll)
router.get('/:id', ferianteController.getById)

// Rutas Protegidas (Feriantes y Admin)
router.post('/', verifyToken, requireRole('feriante', 'admin'), ferianteController.create)
router.put('/:id', verifyToken, requireRole('feriante', 'admin'), ferianteController.update)
router.delete('/:id', verifyToken, requireRole('feriante', 'admin'), ferianteController.remove)

// Rutas de Administración (Solo Admin)
router.patch('/:id/aprobar', verifyToken, requireRole('admin'), ferianteController.approve)
router.patch('/:id/rechazar', verifyToken, requireRole('admin'), ferianteController.reject)

module.exports = router
