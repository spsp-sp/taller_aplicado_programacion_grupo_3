require('dotenv').config()
const app = require('./app')
const { sequelize } = require('./database/connection')

const PORT = process.env.PORT || 3001

async function start() {
  try {
    await sequelize.authenticate()
    console.log('✅ Conexión a la base de datos establecida.')

    // Sync models (use migrations in production)
    if (process.env.NODE_ENV === 'development') {
      await sequelize.sync({ alter: true })
      console.log('✅ Modelos sincronizados.')
    }

    app.listen(PORT, () => {
      console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`)
    })
  } catch (error) {
    console.error('❌ No se pudo iniciar el servidor:', error)
    process.exit(1)
  }
}

start()
