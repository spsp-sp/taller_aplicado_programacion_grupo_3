const Usuario    = require('./Usuario')
const Comuna     = require('./Comuna')
const Feria      = require('./Feria')
const Ubicacion  = require('./Ubicacion')
const DiaFeria = require('./DiaFeria')
const Feriante   = require('./Feriante')
const Resena     = require('./Resena')
const ListaCompras = require('./ListaCompras')


// Una comuna tiene muchas ferias
Comuna.hasMany(Feria, { foreignKey: 'comunaId', as: 'ferias' })
Feria.belongsTo(Comuna, { foreignKey: 'comunaId', as: 'comuna' })

// Una comuna tiene muchos feriantes
Comuna.hasMany(Feriante, { foreignKey: 'comunaId', as: 'feriantes' })
Feriante.belongsTo(Comuna, { foreignKey: 'comunaId', as: 'comuna' })


// Una feria tiene muchas ubicaciones
Feria.hasMany(Ubicacion, { foreignKey: 'feriaId', as: 'ubicaciones' })
Ubicacion.belongsTo(Feria, { foreignKey: 'feriaId', as: 'feria' })

// Una ubicacion tiene muchos dias de feria
Ubicacion.hasMany(DiaFeria, { foreignKey: 'ubicacionId', as: 'diasFeria' })
DiaFeria.belongsTo(Ubicacion, { foreignKey: 'ubicacionId', as: 'ubicacion' })


// Un feriante trabaja en una ubicación específica (no se mueve entre calles)

Ubicacion.belongsToMany(Feriante, {
    through: 'PuestoFeriante',
    foreignKey: 'ubicacionId',
    as: 'feriantes',
})
Feriante.belongsToMany(Ubicacion, {
    through: 'PuestoFeriante',
    foreignKey: 'ferianteId',
    as: 'ubicaciones',
})


// Un usuario puede tener un perfil feriante
Usuario.hasOne(Feriante, { foreignKey: 'usuarioId', as: 'perfilFeriante' })
Feriante.belongsTo(Usuario, { foreignKey: 'usuarioId', as: 'usuario' })


Feria.hasMany(Resena, { foreignKey: 'feriaId', as: 'resenas' })
Resena.belongsTo(Feria, { foreignKey: 'feriaId', as: 'feria' })

Usuario.hasMany(Resena, { foreignKey: 'usuarioId', as: 'resenas' })
Resena.belongsTo(Usuario, { foreignKey: 'usuarioId', as: 'usuario' })


Usuario.hasMany(ListaCompras, { foreignKey: 'usuarioId', as: 'listas' })
ListaCompras.belongsTo(Usuario, { foreignKey: 'usuarioId', as: 'usuario' })


module.exports = {
    Usuario,
    Comuna,
    Feria,
    Ubicacion,
    DiaFeria,
    Feriante,
    Resena,
    ListaCompras,
}

