const { ListaCompras, Feria, Ubicacion, DiaFeria, Comuna } = require('../models')

// GET /api/listas - Obtener todas las listas del usuario
const getAll = async (req, res, next) => {
    try {
        const listas = await ListaCompras.findAll({
            where: { usuarioId: req.user.id },
            order: [['updatedAt', 'DESC']]
        })
        res.json(listas)
    } catch (err) { next(err) }
}

// POST /api/listas - Crear una nueva lista
const create = async (req, res, next) => {
    try {
        const { nombre, items } = req.body
        const lista = await ListaCompras.create({
            nombre: nombre || 'Nueva Lista',
            items: items || [],
            usuarioId: req.user.id
        })
        res.status(201).json(lista)
    } catch (err) { next(err) }
}

// PUT /api/listas/:id - Actualizar nombre o items de una lista
const update = async (req, res, next) => {
    try {
        const { nombre, items } = req.body
        const lista = await ListaCompras.findOne({
            where: { id: req.params.id, usuarioId: req.user.id }
        })

        if (!lista) return res.status(404).json({ message: 'Lista no encontrada.' })

        await lista.update({
            nombre: nombre !== undefined ? nombre : lista.nombre,
            items: items !== undefined ? items : lista.items
        })

        res.json(lista)
    } catch (err) { next(err) }
}

// DELETE /api/listas/:id - Eliminar una lista
const remove = async (req, res, next) => {
    try {
        const lista = await ListaCompras.findOne({
            where: { id: req.params.id, usuarioId: req.user.id }
        })

        if (!lista) return res.status(404).json({ message: 'Lista no encontrada.' })

        await lista.destroy()
        res.json({ message: 'Lista eliminada correctamente.' })
    } catch (err) { next(err) }
}

// POST /api/listas/sugerir - Lógica de sugerencias (se mantiene igual pero usa los items enviados)
const sugerirFerias = async (req, res, next) => {
    try {
        const { items } = req.body
        const hoy = new Date().toLocaleDateString('es-ES', { weekday: 'long' }).toLowerCase()

        const ferias = await Feria.findAll({
            where: { activa: true },
            include: [
                { model: Comuna, as: 'comuna' },
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    include: [{ model: DiaFeria, as: 'diasFeria' }]
                }
            ]
        })

        const sugerencias = ferias.map(feria => {
            const abiertaHoy = feria.ubicaciones.some(u =>
                u.diasFeria.some(d => d.diaSemana.toLowerCase() === hoy)
            )

            return {
                id: feria.id,
                nombre: feria.nombre,
                comuna: feria.comuna?.nombre,
                abiertaHoy,
                tipo: feria.tipo
            }
        })

        sugerencias.sort((a, b) => (a.abiertaHoy === b.abiertaHoy) ? 0 : a.abiertaHoy ? -1 : 1)

        res.json({
            feriasSugeridas: sugerencias.slice(0, 5)
        })
    } catch (err) {
        next(err)
    }
}

module.exports = { getAll, create, update, remove, sugerirFerias }