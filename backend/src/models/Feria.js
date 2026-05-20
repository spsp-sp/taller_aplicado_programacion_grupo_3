const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Feria = sequelize.define('Feria', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
    },
    comunaId: {
        type: DataTypes.INTEGER,
        allowNull: true,
        references: { model: 'comunas', key: 'id' },
    },
    nombre: {
        type: DataTypes.STRING(150),
        allowNull: false,
    },
    descripcion: {
        type: DataTypes.TEXT,
    },
    tipo: {
        type: DataTypes.ENUM('libre', 'municipal', 'organica', 'artesanal'),
        defaultValue: 'libre',
    },
    activa: {
        type: DataTypes.BOOLEAN,
        defaultValue: true,
    },
}, {
    tableName: 'ferias',
    timestamps: true,
})

module.exports = Feria
