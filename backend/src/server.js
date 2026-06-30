require('dotenv').config()
const app = require('./app')
const { sequelize } = require('./database/connection')

const PORT = process.env.PORT || 3001

async function start() {
  try {
    await sequelize.authenticate()
    console.log('Conexión a la base de datos establecida.')

    if (process.env.NODE_ENV === 'development') {
      // En desarrollo actualiza la estructura automáticamente
      await sequelize.sync({ alter: true })
    } else {
      // En producción solo crea las tablas si no existen
      await sequelize.sync()
    }

    console.log('Modelos sincronizados.')

    app.listen(PORT, '0.0.0.0', () => {
      console.log(`Servidor corriendo en el puerto ${PORT}`)
    })

  } catch (error) {
    console.error('No se pudo iniciar el servidor:', error)
    process.exit(1)
  }
}

start()
