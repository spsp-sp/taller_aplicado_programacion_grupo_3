const { Feriante, Usuario, Feria, Comuna, Ubicacion } = require('../models')
const { Op } = require('sequelize')

// GET /api/feriantes
// Listar feriantes con filtros opcionales (comuna, rubro)
const getAll = async (req, res, next) => {
    try {
        const { comunaId, rubro, estado = 'aprobado' } = req.query
        const where = { activo: true }

        if (comunaId) where.comunaId = comunaId
        if (rubro) where.rubro = { [Op.iLike]: `%${rubro}%` }
        if (estado) where.estado = estado

        const feriantes = await Feriante.findAll({
            where,
            include: [
                { model: Usuario, as: 'usuario', attributes: ['id', 'nombre', 'email'] },
                { model: Comuna, as: 'comuna'},
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    through: {attributes: []},
                    include: [{model: Feria, as: 'feria'}]
                }
            ],
            order: [['nombre', 'ASC']],
        })
        res.json(feriantes)
    } catch (err) {
        next(err)
    }
}

// GET /api/feriantes/:id
const getById = async (req, res, next) => {
    try {
        const feriante = await Feriante.findByPk(req.params.id, {
            include: [
                { model: Usuario, as: 'usuario', attributes: ['id', 'nombre', 'email'] },
                { model: Comuna, as: 'comuna'},
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    through: {attributes: []},
                    include: [{model: Feria, as: 'feria'}]
                }
            ],
        })
        if (!feriante) return res.status(404).json({ message: 'Feriante no encontrado.' })
        res.json(feriante)
    } catch (err) {
        next(err)
    }
}

// POST /api/feriantes
const create = async (req, res, next) => {
    try {
        // El usuarioId vendría del token de autenticación en la ruta
        const feriante = await Feriante.create({
            ...req.body,
            usuarioId: req.user.id,
            estado: 'pendiente' // Siempre empieza como pendiente
        })
        res.status(201).json(feriante)
    } catch (err) {
        next(err)
    }
}

// PUT /api/feriantes/:id
const update = async (req, res, next) => {
    try {
        const feriante = await Feriante.findByPk(req.params.id)
        if (!feriante) return res.status(404).json({ message: 'Feriante no encontrado.' })

        // No permitimos cambiar el estado vía update normal, se usa approve/reject
        const { estado, ...updateData } = req.body
        await feriante.update(updateData)
        res.json(feriante)
    } catch (err) {
        next(err)
    }
}

// PATCH /api/feriantes/:id/aprobar (Solo Admin)
const approve = async (req, res, next) => {
    try {
        const feriante = await Feriante.findByPk(req.params.id)
        if (!feriante) return res.status(404).json({ message: 'Feriante no encontrado.' })

        await feriante.update({ estado: 'aprobado' })
        res.json({ message: 'Feriante aprobado correctamente.', feriante })
    } catch (err) {
        next(err)
    }
}

// PATCH /api/feriantes/:id/rechazar (Solo Admin)
const reject = async (req, res, next) => {
    try {
        const feriante = await Feriante.findByPk(req.params.id)
        if (!feriante) return res.status(404).json({ message: 'Feriante no encontrado.' })

        await feriante.update({ estado: 'rechazado' })
        res.json({ message: 'Feriante rechazado.', feriante })
    } catch (err) {
        next(err)
    }
}

// DELETE /api/feriantes/:id
const remove = async (req, res, next) => {
    try {
        const feriante = await Feriante.findByPk(req.params.id)
        if (!feriante) return res.status(404).json({ message: 'Feriante no encontrado.' })
        await feriante.update({ activo: false }) // soft delete
        res.json({ message: 'Feriante desactivado.' })
    } catch (err) {
        next(err)
    }
}

module.exports = { getAll, getById, create, update, approve, reject, remove }
