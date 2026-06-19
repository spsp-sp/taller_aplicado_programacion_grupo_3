const { Feria, Feriante, Resena, Usuario, Ubicacion, DiaFeria, Comuna } = require('../models')
const { Op } = require('sequelize')


// GET /api/ferias
const getAll = async (req, res, next) => {
    try {
        // 1. Extraemos también el parámetro 'dia' enviado por el Frontend
        const { tipo, activa = true, comunaId, dia } = req.query
        const where = { activa: activa === 'true' || activa === true }

        if (tipo) where.tipo = tipo
        if (comunaId) where.comunaId = comunaId

        // 2. Configuramos el filtro condicional para los días de la semana
        const diaWhere = {}
        let filtrarPorDia = false

        if (dia && dia.trim() !== '') {
            diaWhere.diaSemana = dia
            filtrarPorDia = true // Nos avisa que el usuario seleccionó un día específico
        }

        const ferias = await Feria.findAll({
            where,
            include: [
                { model: Comuna, as: 'comuna' },
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    // Si filtramos por día, exigimos que la feria tenga al menos una ubicación ese día
                    required: filtrarPorDia,
                    include: [{
                        model: DiaFeria,
                        as: 'diasFeria',
                        where: diaWhere,
                        // Si filtramos por día, forzamos a Sequelize a descartar los otros días
                        required: filtrarPorDia
                    }]
                },
                {
                    model: Resena,
                    as: 'resenas',
                    attributes:['calificacion']
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
        const { lat, lng, radius, comunaId, dia } = req.query

        const diaWhere = {}
        let filtrarPorDia = false
        if (dia && dia.trim() !== '' && dia !== 'undefined' && dia !== 'null') {
            diaWhere.diaSemana = dia
            filtrarPorDia = true
        }

        let ubicacionWhere = undefined;
        const hasComuna = comunaId && comunaId !== '' && comunaId !== 'null' && comunaId !== 'undefined';

        // Solo aplicar filtro de distancia si NO hay comuna y SI hay radio/coordenadas
        if (!hasComuna && radius && radius !== 'all' && radius !== 'undefined' && lat && lng) {
            ubicacionWhere = Feria.sequelize.literal(
                `(6371000 * acos(cos(radians(${lat})) * cos(radians(ubicaciones.latitud)) * cos(radians(ubicaciones.longitud) - radians(${lng})) +
                sin(radians(${lat})) * sin(radians(ubicaciones.latitud)))) < ${radius}`
            );
        }

        const includeOptions = [
            { model: Comuna, as: 'comuna' },
            {
                model: Ubicacion,
                as: 'ubicaciones',
                required: true,
                where: ubicacionWhere,
                include: [{
                    model: DiaFeria,
                    as: 'diasFeria',
                    where: diaWhere,
                    required: filtrarPorDia
                }]
            }
        ]

        const whereConditions = { activa: true }
        if (hasComuna) whereConditions.comunaId = comunaId

        const ferias = await Feria.findAll({
            where: whereConditions,
            include: includeOptions
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
                    // Incluimos tanto los dias de feria como los feriantes dentro de la misma ubicación
                    include: [
                        { model: DiaFeria, as: 'diasFeria' },
                        {
                            model: Feriante,
                            as: 'feriantes',
                            attributes: ['id', 'nombre', 'rubro'],
                            through: { attributes: [] }
                        }
                    ]
                },
                {
                    model: Resena,
                    as: 'resenas',
                    include: [{ model: Usuario, as: 'usuario', attributes: ['id', 'nombre'] }],
                }
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