const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Feriante = sequelize.define('Feriante', {
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
  nombre: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },
  rubro: {
    type: DataTypes.STRING(100),
  },
  descripcion: {
    type: DataTypes.TEXT,
  },
  telefono: {
    type: DataTypes.STRING(20),
  },
  activo: {
    type: DataTypes.BOOLEAN,
    defaultValue: true,
  },
}, {
  tableName: 'feriantes',
  timestamps: true,
})

module.exports = Feriante
