const bcrypt = require('bcrypt')
const { sequelize } = require('../connection')
const { Usuario, Feriante, Feria } = require('../../models')

const seed = async () => {
  try {
    // Sincronizar modelos (esto creará las tablas si no existen)
    await sequelize.sync({ force: false }) 

    console.log('--- Iniciando Seeding ---')

    const hashedPassword = await bcrypt.hash('123456', 10)

    // 1. Crear Ferias
    const [feria1] = await Feria.findOrCreate({
      where: { nombre: 'Feria Libre Maipú' },
      defaults: {
        descripcion: 'Una de las ferias más grandes de la comuna.',
        direccion: 'Av. Pajaritos con Américo Vespucio',
        latitud: -33.510,
        longitud: -70.750,
        tipo: 'libre'
      }
    })

    const [feria2] = await Feria.findOrCreate({
      where: { nombre: 'Feria Orgánica La Florida' },
      defaults: {
        descripcion: 'Productos naturales y sustentables.',
        direccion: 'Av. La Florida 1234',
        latitud: -33.520,
        longitud: -70.580,
        tipo: 'organica'
      }
    })

    // 2. Crear Usuarios Feriantes
    const [uFeriante1] = await Usuario.findOrCreate({
      where: { email: 'juan@feriante.com' },
      defaults: {
        nombre: 'Juan Pérez',
        password: hashedPassword,
        rol: 'feriante'
      }
    })

    const [uFeriante2] = await Usuario.findOrCreate({
      where: { email: 'maria@feriante.com' },
      defaults: {
        nombre: 'María González',
        password: hashedPassword,
        rol: 'feriante'
      }
    })

    const [uFeriante3] = await Usuario.findOrCreate({
      where: { email: 'carlos@feriante.com' },
      defaults: {
        nombre: 'Carlos Soto',
        password: hashedPassword,
        rol: 'feriante'
      }
    })

    // 3. Crear Perfiles de Feriante
    const [f1] = await Feriante.findOrCreate({
      where: { usuarioId: uFeriante1.id },
      defaults: {
        nombre: 'Frutas Juanito',
        rubro: 'Frutas y Verduras',
        descripcion: 'Las mejores manzanas y naranjas de la zona.',
        telefono: '+56912345678',
        comuna: 'Maipú',
        dias: 'Martes, Viernes, Sábado',
        estado: 'aprobado'
      }
    })

    const [f2] = await Feriante.findOrCreate({
      where: { usuarioId: uFeriante2.id },
      defaults: {
        nombre: 'Quesos María',
        rubro: 'Lácteos y Quesos',
        descripcion: 'Quesos artesanales del sur de Chile.',
        telefono: '+56987654321',
        comuna: 'La Florida',
        dias: 'Miércoles, Domingo',
        estado: 'aprobado'
      }
    })

    const [f3] = await Feriante.findOrCreate({
      where: { usuarioId: uFeriante3.id },
      defaults: {
        nombre: 'Frutos del Bosque Carlos',
        rubro: 'Frutos Secos',
        descripcion: 'Nueces, almendras y snacks saludables.',
        telefono: '+56955544433',
        comuna: 'Maipú',
        dias: 'Sábado, Domingo',
        estado: 'aprobado'
      }
    })

    // 4. Asociar Feriantes con Ferias (Many-to-Many)
    // Usamos el método addFerias que Sequelize genera automáticamente
    await f1.addFerias([feria1])
    await f2.addFerias([feria2])
    await f3.addFerias([feria1])

    console.log('--- Seeding completado con éxito ---')
    process.exit(0)
  } catch (error) {
    console.error('Error durante el seeding:', error)
    process.exit(1)
  }
}

seed()
