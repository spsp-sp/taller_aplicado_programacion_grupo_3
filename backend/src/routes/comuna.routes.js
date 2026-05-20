const router = require('express').Router()
const { Comuna } = require('../models')

// GET /api/comunas - Obtener todas las comunas
router.get('/', async (req, res, next) => {
    try {
        const comunas = await Comuna.findAll({
            order: [['nombre', 'ASC']]
        })
        res.json(comunas)
    } catch (err) {
        next(err)
    }
})

module.exports = router