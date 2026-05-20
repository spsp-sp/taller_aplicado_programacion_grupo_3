const { Feria, Feriante, Resena, Usuario, Ubicacion, DiaFeria, Comuna } = require('../models')
const { Op } = require('sequelize')

// GET /api/ferias
const getAll = async (req, res, next) => {
    try {
        const { tipo, activa = true, comunaId} = req.query
        const where = { activa: activa === 'true' || activa === true }

        if (tipo) where.tipo = tipo
        if (comunaId) where.comunaId = comunaId

        const ferias = await Feria.findAll({
            where,
            include: [
                {model: Comuna, as: 'comuna'},
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    include: [{model: DiaFeria, as: 'diasFeria'}]
                }
            ],
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

        const ferias = await Feria.findAll({
            where: { activa: true },
            include: [
                { model: Comuna, as: 'comuna' },
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    required: true,
                    where: Feria.sequelize.literal(
                        `(6371000 * acos(cos(radians(${lat})) * cos(radians(ubicaciones.latitud)) * 
                        cos(radians(ubicaciones.longitud) - radians(${lng})) +
                        sin(radians(${lat})) * sin(radians(ubicaciones.latitud)))) < ${radius}`
                    ),
                    include: [{ model: DiaFeria, as: 'diasFeria' }]
                }
            ]
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
                { model: Comuna, as: 'comuna' },
                {
                  model: Ubicacion,
                  as: 'ubicaciones',
                  include: [{model: DiaFeria, as: 'diaFerias'}]
                },
                {
                    model: Resena, as: 'resenas',
                    include: [{ model: Usuario, as: 'usuario', attributes: ['id', 'nombre'] }],
                },
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    include: [{
                        model: Feriante,
                        as: 'feriantes',
                        attributes: ['id', 'nombre', 'rubro'],
                        through: {attributes:[]}
                    }]
                },
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

        const feria = await Feria.create(req.body, {
            include: [
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    include: [{ model: DiaFeria, as: 'diasFeria' }]
                }
            ]
        })
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
