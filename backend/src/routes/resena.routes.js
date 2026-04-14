const router = require('express').Router()
const { body } = require('express-validator')
const { getByFeria, create, update, remove } = require('../controllers/resena.controller')
const { verifyToken } = require('../middleware/auth')
const validate = require('../middleware/validate')

router.get('/feria/:feriaId', getByFeria)

router.post('/',
  verifyToken,
  [
    body('feriaId').isInt().withMessage('feriaId inválido.'),
    body('calificacion').isInt({ min: 1, max: 5 }).withMessage('Calificación debe ser entre 1 y 5.'),
    body('comentario').optional().trim().isLength({ max: 1000 }),
  ],
  validate,
  create
)

router.put('/:id',    verifyToken, update)
router.delete('/:id', verifyToken, remove)

module.exports = router
