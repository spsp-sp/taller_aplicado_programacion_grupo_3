const req = require("express/lib/request");
const create = async (req, res, next) => {
    try {
        // Extraemos todos los campos que envía el nuevo formulario
        const {
            feriaId,
            calificacion,
            comentario,
            precio,
            metodosPago,
            variedad,
            afluenciaDetallada
        } = req.body

        const resena = await Resena.create({
            feriaId,
            calificacion,
            comentario,
            precio,
            metodosPago,
            variedad,
            afluenciaDetallada,
            usuarioId: req.user.id
        })
        res.status(201).json(resena)
    } catch (err) {
        next(err)
    }
}

const { Resena, Usuario } = require('../models');


const getByFeria = async (req, res, next) => {
    try {
        const resenas = await Resena.findAll({
            where: { feriaId: req.params.feriaId },
            include: [{ model: Usuario, as: 'usuario', attributes: ['id', 'nombre'] }],
            order: [['createdAt', 'DESC']],
        })
        res.json(resenas)
    } catch (err) {
        next(err)
    }
}

const update = async (req, res, next) => {
    try {
        const resena = await Resena.findByPk(req.params.id)
        if (!resena) return res.status(404).json({ message: 'Reseña no encontrada.' })
        if (resena.usuarioId !== req.user.id) return res.status(403).json({ message: 'Sin permisos.' })
        await resena.update(req.body)
        res.json(resena)
    } catch (err) {
        next(err)
    }
}

const remove = async (req, res, next) => {
    try {
        const resena = await Resena.findByPk(req.params.id)
        if (!resena) return res.status(404).json({ message: 'Reseña no encontrada.' })
        if (resena.usuarioId !== req.user.id && req.user.rol !== 'admin')
            return res.status(403).json({ message: 'Sin permisos.' })
        await resena.destroy()
        res.json({ message: 'Reseña eliminada.' })
    } catch (err) {
        next(err)
    }
}


// Los demás métodos (getByFeria, update, remove) se mantienen igual,
// pero ahora devolverán los nuevos campos JSON automáticamente.

module.exports = { create, getByFeria, update, remove}
