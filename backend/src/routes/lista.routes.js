const router = require('express').Router()
const listaController = require('../controllers/lista.controller')
const { verifyToken } = require('../middleware/auth')

router.use(verifyToken)
router.get('/', listaController.getAll)
router.post('/', listaController.create)
router.post('/sugerir', listaController.sugerirFerias)
router.put('/:id', listaController.update)
router.delete('/:id', listaController.remove)

module.exports = router
