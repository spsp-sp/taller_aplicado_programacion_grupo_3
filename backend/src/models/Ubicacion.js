const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Ubicacion = sequelize.define('Ubicacion', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    feriaId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: { model: 'ferias', key: 'id' },
    },
    callePrincipal: {
        type: DataTypes.STRING(200),
        allowNull: false,
    },
    calleInicio: {
        type: DataTypes.STRING(200),
    },
    calleTermino: {
        type: DataTypes.STRING(200),
    },
    latitud: {
        type: DataTypes.DECIMAL(10, 8),
        allowNull: false,
        validate: { min: -90, max: 90 },
    },
    longitud: {
        type: DataTypes.DECIMAL(11, 8),
        allowNull: false,
        validate: { min: -180, max: 180 },
    },
    numPuestos: {
        type: DataTypes.INTEGER,
        allowNull: true,
    },
}, {
    tableName: 'ubicaciones',
    timestamps: false,
})

module.exports = Ubicacion
