const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const ListaCompras = sequelize.define('ListaCompras', {
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
    type: DataTypes.STRING(100),
    defaultValue: 'Mi lista',
  },
  items: {
    type: DataTypes.JSONB, // array of { nombre, cantidad, unidad, completado }
    defaultValue: [],
  },
}, {
  tableName: 'listas_compras',
  timestamps: true,
})

module.exports = ListaCompras
