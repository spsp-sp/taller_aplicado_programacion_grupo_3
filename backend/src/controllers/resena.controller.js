const { Resena, Usuario } = require('../models')

// GET /api/resenas/feria/:feriaId
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

// POST /api/resenas
const create = async (req, res, next) => {
  try {
    const resena = await Resena.create({ ...req.body, usuarioId: req.user.id })
    res.status(201).json(resena)
  } catch (err) {
    next(err)
  }
}

// PUT /api/resenas/:id
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

// DELETE /api/resenas/:id
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

module.exports = { getByFeria, create, update, remove }
