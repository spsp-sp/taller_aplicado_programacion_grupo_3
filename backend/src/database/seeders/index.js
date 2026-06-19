const bcrypt = require('bcrypt')
const { sequelize } = require('../connection')
const {
    Usuario,
    Comuna,
    Feria,
    Ubicacion,
    DiaFeria,
    Feriante,
} = require('../../models')

const seed = async () => {
    try {

        // Sincronizar modelos (esto creará las tablas si no existen)
        await sequelize.sync({ alter: true })

        //Compara tablas y aplica cambios
        //await sequelize.sync({ alter: true })
        console.log('--- Iniciando Seeding ---')

        const hashedPassword = await bcrypt.hash('123456', 10)
        // Generamos la contraseña encriptada específica para el administrador
        const adminHashedPassword = await bcrypt.hash('admin123', 10)

        // 1. Usuarios Base (Incluye al Administrador solicitado)
        const [uAdmin] = await Usuario.findOrCreate({
            where: { email: 'admin@feria.com' }, // Usamos un formato de correo válido por buenas prácticas
            defaults: {
                nombre: 'admin',
                password: adminHashedPassword,
                rol: 'admin', // Le otorgamos explícitamente el rol de administrador
            }
        })

        const [uFeriante1] = await Usuario.findOrCreate({
            where: { email: 'juan@feria.com' },
            defaults: {
                nombre: 'Juan Pérez',
                password: hashedPassword,
                rol: 'feriante',
            }
        })
        const [uFeriante2] = await Usuario.findOrCreate({
            where: { email: 'maria@feria.com' },
            defaults: {
                nombre: 'María López',
                password: hashedPassword,
                rol: 'feriante',
            }
        })
        const [uFeriante3] = await Usuario.findOrCreate({
            where: { email: 'carlos@feria.com' },
            defaults: {
                nombre: 'Carlos Soto',
                password: hashedPassword,
                rol: 'feriante',
            }
        })

        // 2. Comunas
        const [puenAlto] = await Comuna.findOrCreate({
            where: { nombre: 'Puente Alto' },
        })
        const [maipu] = await Comuna.findOrCreate({
            where: { nombre: 'Maipú' },
        })
        const [laFlorida] = await Comuna.findOrCreate({
            where: { nombre: 'La Florida' },
        })

        // 3. Ferias
        const [licanray] = await Feria.findOrCreate({
            where: { nombre: 'Licanray', comunaId: puenAlto.id },
            defaults: {
                descripcion: 'Feria libre con múltiples ubicaciones en Puente Alto.',
                tipo: 'libre',
                activa: true,
            },
        })
        const [losCopihues] = await Feria.findOrCreate({
            where: { nombre: 'Los Copihues', comunaId: laFlorida.id },
            defaults: {
                descripcion: 'Feria municipal organizada en La Florida.',
                tipo: 'municipal',
                activa: true,
            },
        })
        const [tresPoniente] = await Feria.findOrCreate({
            where: { nombre: 'Tres Poniente', comunaId: maipu.id },
            defaults: {
                descripcion: 'Feria gigante con una gran variedad de productos en Maipú.',
                tipo: 'libre',
                activa: true,
            },
        })

        // 4. Ubicaciones
        const [ubi1] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'Av. El Peral' },
            defaults: {
                calleInicio: 'Av. Concha y Toro',
                calleTermino: 'Las Perdices',
                latitud: -33.5722508,
                longitud: -70.5634535,
                numPuestos: 120,
            },
        })
        const [ubi2] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'San Hugo' },
            defaults: {
                calleInicio: 'Av. Gabriela',
                calleTermino: 'Ejército Libertador',
                latitud: -33.585400,
                longitud: -70.601200,
                numPuestos: 80,
            },
        })
        const [ubi7] = await Ubicacion.findOrCreate({
            where: { feriaId: losCopihues.id, callePrincipal: 'Av. Departamental' },
            defaults: {
                calleInicio: 'Av. La Florida',
                calleTermino: 'Vicuña Mackenna',
                latitud: -33.515200,
                longitud: -70.589400,
                numPuestos: 150,
            },
        })
        const [ubi8] = await Ubicacion.findOrCreate({
            where: { feriaId: tresPoniente.id, callePrincipal: 'Av. Tres Poniente' },
            defaults: {
                calleInicio: 'Camino a Melipilla',
                calleTermino: 'Silva Carvallo',
                latitud: -33.534600,
                longitud: -70.785300,
                numPuestos: 200,
            },
        })

        // 5. Días de Feria
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi1.id, diaSemana: 'martes' },
            defaults: { horaInicio: '08:00:00', horaFin: '16:00:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi1.id, diaSemana: 'sabado' },
            defaults: { horaInicio: '08:00:00', horaFin: '16:00:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi2.id, diaSemana: 'miercoles' },
            defaults: { horaInicio: '08:00:00', horaFin: '16:00:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi7.id, diaSemana: 'jueves' },
            defaults: { horaInicio: '08:00:00', horaFin: '16:00:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi7.id, diaSemana: 'domingo' },
            defaults: { horaInicio: '08:00:00', horaFin: '16:00:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi8.id, diaSemana: 'viernes' },
            defaults: { horaInicio: '07:30:00', horaFin: '15:30:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi8.id, diaSemana: 'domingo' },
            defaults: { horaInicio: '07:30:00', horaFin: '15:30:00' },
        })

        // 6. Feriantes
        const [f1] = await Feriante.findOrCreate({
            where: { usuarioId: uFeriante1.id },
            defaults: {
                comunaId: puenAlto.id,
                nombre: 'Frutería El Juanito',
                rubro: 'Frutas y Verduras',
                descripcion: 'Las mejores frutas de la zona.',
                telefono: '+56912345678',
                estado: 'aprobado',
            },
        })
        const [f2] = await Feriante.findOrCreate({
            where: { usuarioId: uFeriante2.id },
            defaults: {
                comunaId: laFlorida.id,
                nombre: 'Quesos María',
                rubro: 'Lácteos y Quesos',
                descripcion: 'Quesos artesanales del sur de Chile.',
                telefono: '+56987654321',
                estado: 'aprobado',
            },
        })
        const [f3] = await Feriante.findOrCreate({
            where: { usuarioId: uFeriante3.id },
            defaults: {
                comunaId: maipu.id,
                nombre: 'Frutos del Bosque Carlos',
                rubro: 'Frutos Secos',
                descripcion: 'Nueces, almendras y snacks saludables.',
                telefono: '+56955544433',
                estado: 'aprobado',
            },
        })

        // 7. Asociar feriantes a su ubicación específica
        await f1.addUbicaciones([ubi1])  // Juan → Av. El Peral (Licanray)
        await f2.addUbicaciones([ubi7])  // María → Av. Departamental (Los Copihues)
        await f3.addUbicaciones([ubi8])  // Carlos → Av. Tres Poniente (Tres Poniente)

        console.log('--- Seeding completado con éxito ---')
    } catch (error) {
        console.error('Error durante el seeding:', error)
    } finally {
        await sequelize.close()
    }
}

seed()