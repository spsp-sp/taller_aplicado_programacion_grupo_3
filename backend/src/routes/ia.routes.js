const router = require('express').Router()
const { recomendaciones } = require('../controllers/ia.controller')
const { verifyToken } = require('../middleware/auth')

router.post('/recomendaciones', verifyToken, recomendaciones)

module.exports = router
