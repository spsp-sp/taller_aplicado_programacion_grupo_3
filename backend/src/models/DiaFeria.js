const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const DiaFeria = sequelize.define('DiaFeria', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    ubicacionId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: { model: 'ubicaciones', key: 'id' },
    },
    diaSemana: {
        type: DataTypes.ENUM(
            'lunes', 'martes', 'miercoles',
            'jueves', 'viernes', 'sabado', 'domingo'
        ),
        allowNull: false,
    },
    horaInicio: {
        type: DataTypes.TIME,
        allowNull: false,
    },
    horaFin: {
        type: DataTypes.TIME,
        allowNull: false,
    },
}, {
    tableName: 'dias_feria',
    timestamps: false,
})

module.exports = DiaFeria