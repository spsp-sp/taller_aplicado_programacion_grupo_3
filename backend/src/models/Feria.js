const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Feria = sequelize.define('Feria', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },
  nombre: {
    type: DataTypes.STRING(150),
    allowNull: false,
  },
  descripcion: {
    type: DataTypes.TEXT,
  },
  direccion: {
    type: DataTypes.STRING(255),
    allowNull: false,
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
