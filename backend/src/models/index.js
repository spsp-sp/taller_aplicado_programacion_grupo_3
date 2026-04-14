const Usuario  = require('./Usuario')
const Feria    = require('./Feria')
const Feriante = require('./Feriante')
const Resena   = require('./Resena')
const Horario  = require('./Horario')
const ListaCompras = require('./ListaCompras')

// ── Asociaciones ────────────────────────────────────────────────────────────

// Un usuario puede ser feriante
Usuario.hasOne(Feriante, { foreignKey: 'usuarioId', as: 'perfilFeriante' })
Feriante.belongsTo(Usuario, { foreignKey: 'usuarioId', as: 'usuario' })

// Una feria tiene muchos feriantes (puestos)
Feria.belongsToMany(Feriante, { through: 'PuestoFeriante', as: 'feriantes' })
Feriante.belongsToMany(Feria, { through: 'PuestoFeriante', as: 'ferias' })

// Una feria tiene muchas reseñas
Feria.hasMany(Resena, { foreignKey: 'feriaId', as: 'resenas' })
Resena.belongsTo(Feria, { foreignKey: 'feriaId', as: 'feria' })

// Un usuario tiene muchas reseñas
Usuario.hasMany(Resena, { foreignKey: 'usuarioId', as: 'resenas' })
Resena.belongsTo(Usuario, { foreignKey: 'usuarioId', as: 'usuario' })

// Una feria tiene muchos horarios
Feria.hasMany(Horario, { foreignKey: 'feriaId', as: 'horarios' })
Horario.belongsTo(Feria, { foreignKey: 'feriaId', as: 'feria' })

// Un usuario tiene muchas listas de compras
Usuario.hasMany(ListaCompras, { foreignKey: 'usuarioId', as: 'listas' })
ListaCompras.belongsTo(Usuario, { foreignKey: 'usuarioId', as: 'usuario' })

module.exports = { Usuario, Feria, Feriante, Resena, Horario, ListaCompras }
