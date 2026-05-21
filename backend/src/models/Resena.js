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
        references: {model: 'usuarios', key: 'id'},
      },
      feriaId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {model: 'ferias', key: 'id'},
      },
      calificacion: {
        type: DataTypes.INTEGER,
        allowNull: false,
        validate: {min: 1, max: 5},
      },
      comentario: {
        type: DataTypes.TEXT,
      },
      precio: {
        type: DataTypes.ENUM('barato', 'medio', 'caro'),
        defaultValue: 'medio',
      },
      // CAMBIO: Usamos JSON para guardar el objeto de métodos de pago (efectivo, tarjeta)
      metodosPago: {
        type: DataTypes.JSON,
        defaultValue: { efectivo: true, tarjeta: false }
      },
      // CAMBIO: Usamos JSON para guardar el objeto de variedad (vegetales, frutas, etc.)
      // El ENUM anterior solo permitía elegir UNO, con JSON guardamos todos los seleccionados.
      variedad: {
        type: DataTypes.JSON,
        defaultValue: {}
      },
      // CAMBIO: Usamos JSON para el semáforo de afluencia detallada
      afluenciaDetallada: {
        type: DataTypes.JSON,
        defaultValue: { temprano: 1, mediaDia: 2, cierre: 1 }
      }
    },
    {
      tableName: 'resenas',
      timestamps: true,
    })

module.exports = Resena
