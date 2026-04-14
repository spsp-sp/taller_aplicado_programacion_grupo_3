const { DataTypes } = require('sequelize')
const { sequelize } = require('../database/connection')

const Horario = sequelize.define('Horario', {
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
  diaSemana: {
    type: DataTypes.ENUM('lunes','martes','miercoles','jueves','viernes','sabado','domingo'),
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
  tableName: 'horarios',
  timestamps: false,
})

module.exports = Horario
