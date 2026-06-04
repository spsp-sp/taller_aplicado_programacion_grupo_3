const router = require('express').Router()
const { recomendaciones, chat } = require('../controllers/ia.controller')
const { verifyToken } = require('../middleware/auth')

router.post('/chat', verifyToken, chat)
router.post('/recomendaciones', verifyToken, recomendaciones)

module.exports = router
