const router = require('express').Router()
const { Feriante } = require('../models')
const { verifyToken, requireRole } = require('../middleware/auth')

router.get('/', async (req, res, next) => {
  try {
    const feriantes = await Feriante.findAll({ where: { activo: true } })
    res.json(feriantes)
  } catch (err) { next(err) }
})

router.get('/:id', async (req, res, next) => {
  try {
    const feriante = await Feriante.findByPk(req.params.id)
    if (!feriante) return res.status(404).json({ message: 'Feriante no encontrado.' })
    res.json(feriante)
  } catch (err) { next(err) }
})

router.post('/', verifyToken, requireRole('feriante', 'admin'), async (req, res, next) => {
  try {
    const feriante = await Feriante.create({ ...req.body, usuarioId: req.user.id })
    res.status(201).json(feriante)
  } catch (err) { next(err) }
})

module.exports = router
