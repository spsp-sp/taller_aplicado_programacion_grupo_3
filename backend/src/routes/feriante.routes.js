const router = require('express').Router()
const ferianteController = require('../controllers/feriante.controller')
const { verifyToken, requireRole } = require('../middleware/auth')

// ── Rutas estáticas (deben ir ANTES de /:id) ────────────────────────────────

// Ruta pública: listado
router.get('/', ferianteController.getAll)

// Ruta protegida: el usuario autenticado consulta su propia solicitud
router.get('/mi-solicitud', verifyToken, ferianteController.getMiSolicitud)

// Solo Admin: conteo de pendientes
router.get('/count/pending', verifyToken, requireRole('admin'), ferianteController.getPendingCount)

// ── Rutas dinámicas ─────────────────────────────────────────────────────────
router.get('/:id', ferianteController.getById)

// Rutas Protegidas (Feriantes y Admin)
router.post('/', verifyToken, requireRole('feriante', 'admin'), ferianteController.create)
router.put('/:id', verifyToken, requireRole('feriante', 'admin'), ferianteController.update)
router.delete('/:id', verifyToken, requireRole('feriante', 'admin'), ferianteController.remove)

// Solo Admin: aprobar / rechazar
router.patch('/:id/aprobar', verifyToken, requireRole('admin'), ferianteController.approve)
router.patch('/:id/rechazar', verifyToken, requireRole('admin'), ferianteController.reject)

module.exports = router