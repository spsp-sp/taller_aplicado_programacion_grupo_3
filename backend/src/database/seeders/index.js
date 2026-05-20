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
        // await sequelize.sync({ force: false })

        //Compara tablas y aplica cambios
        await sequelize.sync({ alter: true })
        console.log('--- Iniciando Seeding ---')

        const hashedPassword = await bcrypt.hash('123456', 10)

        // 1. Comunas
        const [puenAlto] = await Comuna.findOrCreate({
            where: { nombre: 'Puente Alto' },
        })
        const [maipu] = await Comuna.findOrCreate({
            where: { nombre: 'Maipú' },
        })
        const [laFlorida] = await Comuna.findOrCreate({
            where: { nombre: 'La Florida' },
        })

        // 2. Ferias
        const [licanray] = await Feria.findOrCreate({
            where: { nombre: 'Licanray', comunaId: puenAlto.id },
            defaults: {
                descripcion: 'Feria libre con múltiples ubicaciones en Puente Alto.',
                tipo: 'libre',
                activa: true,
            },
        })
        const [borognio] = await Feria.findOrCreate({
            where: { nombre: 'Borgoño', comunaId: maipu.id },
            defaults: {
                descripcion: 'Feria libre sector Maipú.',
                tipo: 'libre',
                activa: true,
            },
        })
        const [copihues] = await Feria.findOrCreate({
            where: { nombre: 'Los Copihues', comunaId: laFlorida.id },
            defaults: {
                descripcion: 'Feria libre sector La Florida.',
                tipo: 'libre',
                activa: true,
            },
        })

        // 3. Ubicaciones
        const [ubi1] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'Av. El Peral' },
            defaults: {
                calleInicio: 'México',
                calleTermino: 'Av. Las Nieves Oriente',
                latitud: -33.5722508,
                longitud: -70.5634535,
                numPuestos: 205,
            },
        })
        const [ubi2] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'Av. México' },
            defaults: {
                calleInicio: 'Los Toros',
                calleTermino: 'Bahía Inglesa',
                latitud: -33.5650055,
                longitud: -70.5673402,
                numPuestos: 210,
            },
        })
        const [ubi3] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'Troncal San Francisco' },
            defaults: {
                calleInicio: 'Valle Central',
                calleTermino: 'Nonato Coo',
                latitud: -33.5801095,
                longitud: -70.5711200,
                numPuestos: 230,
            },
        })
        const [ubi4] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'Las Nieves' },
            defaults: {
                calleInicio: 'El Peñón',
                calleTermino: '65 mts al sur de Luis Matte',
                latitud: -33.5823473,
                longitud: -70.5581280,
                numPuestos: 216,
            },
        })
        const [ubi5] = await Ubicacion.findOrCreate({
            where: { feriaId: licanray.id, callePrincipal: 'Punta Blanca' },
            defaults: {
                calleInicio: 'Buin',
                calleTermino: 'El Barquito',
                latitud: -33.5833265,
                longitud: -70.5538630,
                numPuestos: 92,
            },
        })
        const [ubi6] = await Ubicacion.findOrCreate({
            where: { feriaId: borognio.id, callePrincipal: 'J.M. Borgoño' },
            defaults: {
                calleInicio: 'Las Naciones',
                calleTermino: '4 Poniente',
                latitud: -33.5100000,
                longitud: -70.7500000,
                numPuestos: 120,
            },
        })
        const [ubi7] = await Ubicacion.findOrCreate({
            where: { feriaId: copihues.id, callePrincipal: 'Av. Departamental' },
            defaults: {
                calleInicio: 'Volcán Llaima',
                calleTermino: 'Los Cerezos',
                latitud: -33.5200000,
                longitud: -70.5800000,
                numPuestos: 180,
            },
        })

        // 4. Dias Feria
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi1.id, diaSemana: 'martes' },
            defaults: { horaInicio: '08:00', horaFin: '15:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi2.id, diaSemana: 'jueves' },
            defaults: { horaInicio: '08:00', horaFin: '15:00' },
        })
        // Troncal San Francisco: miércoles Y sábado en la misma ubicación
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi3.id, diaSemana: 'miercoles' },
            defaults: { horaInicio: '08:00', horaFin: '15:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi3.id, diaSemana: 'sabado' },
            defaults: { horaInicio: '08:00', horaFin: '15:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi4.id, diaSemana: 'domingo' },
            defaults: { horaInicio: '08:00', horaFin: '15:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi5.id, diaSemana: 'viernes' },
            defaults: { horaInicio: '08:00', horaFin: '15:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi6.id, diaSemana: 'martes' },
            defaults: { horaInicio: '08:00', horaFin: '14:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi6.id, diaSemana: 'viernes' },
            defaults: { horaInicio: '08:00', horaFin: '14:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi7.id, diaSemana: 'jueves' },
            defaults: { horaInicio: '07:00', horaFin: '15:00' },
        })
        await DiaFeria.findOrCreate({
            where: { ubicacionId: ubi7.id, diaSemana: 'domingo' },
            defaults: { horaInicio: '07:00', horaFin: '15:00' },
        })

        // 5. Usuarios feriantes
        const [uFeriante1] = await Usuario.findOrCreate({
            where: { email: 'juan@feriante.com' },
            defaults: { nombre: 'Juan Pérez', password: hashedPassword, rol: 'feriante' },
        })
        const [uFeriante2] = await Usuario.findOrCreate({
            where: { email: 'maria@feriante.com' },
            defaults: { nombre: 'María González', password: hashedPassword, rol: 'feriante' },
        })
        const [uFeriante3] = await Usuario.findOrCreate({
            where: { email: 'carlos@feriante.com' },
            defaults: { nombre: 'Carlos Soto', password: hashedPassword, rol: 'feriante' },
        })

        // 6. Perfiles feriante
        const [f1] = await Feriante.findOrCreate({
            where: { usuarioId: uFeriante1.id },
            defaults: {
                comunaId: puenAlto.id,
                nombre: 'Frutas Juanito',
                rubro: 'Frutas y Verduras',
                descripcion: 'Las mejores manzanas y naranjas de la zona.',
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
        await f3.addUbicaciones([ubi6])  // Carlos → J.M. Borgoño (Borgoño)

        console.log('--- Seeding completado con éxito ---')
        process.exit(0)
    } catch (error) {
        console.error('Error durante el seeding:', error)
        process.exit(1)
    }
}

seed()
