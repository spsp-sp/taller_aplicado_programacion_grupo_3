const { Feria, Feriante, Resena, Horario, Usuario } = require('../models')
const { Op } = require('sequelize')

// GET /api/ferias
const getAll = async (req, res, next) => {
  try {
    const { tipo, activa = true } = req.query
    const where = { activa }
    if (tipo) where.tipo = tipo

    const ferias = await Feria.findAll({
      where,
      include: [{ model: Horario, as: 'horarios' }],
      order: [['nombre', 'ASC']],
    })
    res.json(ferias)
  } catch (err) {
    next(err)
  }
}

// GET /api/ferias/nearby?lat=&lng=&radius=
const getNearby = async (req, res, next) => {
  try {
    const { lat, lng, radius = 5000 } = req.query
    if (!lat || !lng) return res.status(400).json({ message: 'lat y lng son requeridos.' })

    // Haversine filter using raw SQL (compatible with PostgreSQL)
    const ferias = await Feria.findAll({
      where: {
        activa: true,
        [Op.and]: Feria.sequelize.literal(
          `(6371000 * acos(cos(radians(${lat})) * cos(radians(latitud)) *
           cos(radians(longitud) - radians(${lng})) +
           sin(radians(${lat})) * sin(radians(latitud)))) < ${radius}`
        ),
      },
    })
    res.json(ferias)
  } catch (err) {
    next(err)
  }
}

// GET /api/ferias/:id
const getById = async (req, res, next) => {
  try {
    const feria = await Feria.findByPk(req.params.id, {
      include: [
        { model: Horario, as: 'horarios' },
        {
          model: Resena, as: 'resenas',
          include: [{ model: Usuario, as: 'usuario', attributes: ['id', 'nombre'] }],
        },
        { model: Feriante, as: 'feriantes', attributes: ['id', 'nombre', 'rubro'] },
      ],
    })
    if (!feria) return res.status(404).json({ message: 'Feria no encontrada.' })
    res.json(feria)
  } catch (err) {
    next(err)
  }
}

// POST /api/ferias
const create = async (req, res, next) => {
  try {
    const feria = await Feria.create(req.body)
    res.status(201).json(feria)
  } catch (err) {
    next(err)
  }
}

// PUT /api/ferias/:id
const update = async (req, res, next) => {
  try {
    const feria = await Feria.findByPk(req.params.id)
    if (!feria) return res.status(404).json({ message: 'Feria no encontrada.' })
    await feria.update(req.body)
    res.json(feria)
  } catch (err) {
    next(err)
  }
}

// DELETE /api/ferias/:id
const remove = async (req, res, next) => {
  try {
    const feria = await Feria.findByPk(req.params.id)
    if (!feria) return res.status(404).json({ message: 'Feria no encontrada.' })
    await feria.update({ activa: false }) // soft delete
    res.json({ message: 'Feria desactivada.' })
  } catch (err) {
    next(err)
  }
}

module.exports = { getAll, getNearby, getById, create, update, remove }
