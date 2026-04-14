const router = require('express').Router()
const { ListaCompras } = require('../models')
const { verifyToken } = require('../middleware/auth')

router.use(verifyToken) // all lista routes require auth

router.get('/', async (req, res, next) => {
  try {
    const listas = await ListaCompras.findAll({ where: { usuarioId: req.user.id } })
    res.json(listas)
  } catch (err) { next(err) }
})

router.post('/', async (req, res, next) => {
  try {
    const lista = await ListaCompras.create({ ...req.body, usuarioId: req.user.id })
    res.status(201).json(lista)
  } catch (err) { next(err) }
})

router.put('/:id', async (req, res, next) => {
  try {
    const lista = await ListaCompras.findOne({ where: { id: req.params.id, usuarioId: req.user.id } })
    if (!lista) return res.status(404).json({ message: 'Lista no encontrada.' })
    await lista.update(req.body)
    res.json(lista)
  } catch (err) { next(err) }
})

router.delete('/:id', async (req, res, next) => {
  try {
    const lista = await ListaCompras.findOne({ where: { id: req.params.id, usuarioId: req.user.id } })
    if (!lista) return res.status(404).json({ message: 'Lista no encontrada.' })
    await lista.destroy()
    res.json({ message: 'Lista eliminada.' })
  } catch (err) { next(err) }
})

module.exports = router
