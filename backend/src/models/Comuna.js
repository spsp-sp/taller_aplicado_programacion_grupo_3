const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Comuna = sequelize.define('Comuna', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    nombre: {
        type: DataTypes.STRING(100),
        allowNull: false,
        unique: true,
    },
    region: {
        type: DataTypes.STRING(100),
        defaultValue: 'Región Metropolitana',
    },
}, {
    tableName: 'comunas',
    timestamps: false,
})

module.exports = Comuna
