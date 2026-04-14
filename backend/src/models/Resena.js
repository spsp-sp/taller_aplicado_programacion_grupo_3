const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Resena = sequelize.define('Resena', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  usuarioId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: { model: 'usuarios', key: 'id' },
  },
  feriaId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: { model: 'ferias', key: 'id' },
  },
  calificacion: {
    type: DataTypes.INTEGER,
    allowNull: false,
    validate: { min: 1, max: 5 },
  },
  comentario: {
    type: DataTypes.TEXT,
  },
}, {
  tableName: 'resenas',
  timestamps: true,
})

module.exports = Resena
