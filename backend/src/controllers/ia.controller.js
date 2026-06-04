const { OpenAI } = require('openai')
const { Feria, Comuna, Ubicacion, DiaFeria, Resena, Usuario } = require('../models')

const openai = new OpenAI({
    apiKey: process.env.API_KEY_GROQ,
    baseURL: 'https://api.groq.com/openai/v1',
})

// Helper para calcular la distancia en kilómetros usando la fórmula de Haversine
const getDistance = (lat1, lon1, lat2, lon2) => {
    const R = 6371 // Radio de la tierra en km
    const dLat = (lat2 - lat1) * Math.PI / 180
    const dLon = (lon2 - lon1) * Math.PI / 180
    const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
        Math.cos(lat1 * Math.PI / 180) * Math.cos(lat2 * Math.PI / 180) *
        Math.sin(dLon / 2) * Math.sin(dLon / 2)
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
    return R * c
}

// Obtiene los datos de la base de datos y construye el prompt del sistema optimizado en tokens
const buildSystemPrompt = async (userLat, userLng) => {
    try {
        const ferias = await Feria.findAll({
            where: { activa: true },
            include: [
                { model: Comuna, as: 'comuna' },
                {
                    model: Ubicacion,
                    as: 'ubicaciones',
                    include: [{ model: DiaFeria, as: 'diasFeria' }]
                },
                {
                    model: Resena,
                    as: 'resenas',
                    include: [{ model: Usuario, as: 'usuario', attributes: ['nombre'] }]
                }
            ]
        })

        // Filtrar y ordenar ferias por distancia si tenemos las coordenadas del usuario
        let filteredFerias = ferias
        const hasCoords = userLat !== undefined && userLng !== undefined && userLat !== null && userLng !== null

        if (hasCoords) {
            const uLat = Number(userLat)
            const uLng = Number(userLng)
            
            const feriasWithDist = ferias.map(f => {
                let minDistance = Infinity
                if (f.ubicaciones && f.ubicaciones.length > 0) {
                    f.ubicaciones.forEach(u => {
                        const dist = getDistance(uLat, uLng, Number(u.latitud), Number(u.longitud))
                        if (dist < minDistance) minDistance = dist
                    })
                }
                return { feria: f, distance: minDistance }
            })

            // Ordenar por distancia ascendente y tomar las 6 ferias más cercanas
            feriasWithDist.sort((a, b) => a.distance - b.distance)
            filteredFerias = feriasWithDist.slice(0, 6).map(item => item.feria)
        } else {
            // Si no hay coordenadas, limitar a 6 ferias por defecto para no exceder los tokens del modelo
            filteredFerias = ferias.slice(0, 6)
        }

        // Serialización super compacta para optimizar tokens
        const feriasInfo = filteredFerias.map(f => {
            const comunaName = f.comuna ? f.comuna.nombre : '?'
            const ubicaciones = f.ubicaciones ? f.ubicaciones.map(u => {
                const dias = u.diasFeria ? u.diasFeria.map(d => `${d.diaSemana} ${d.horaInicio.slice(0, 5)}-${d.horaFin.slice(0, 5)}`).join(', ') : '?'
                return `- Calles: ${u.callePrincipal} (${dias})`
            }).join('\n') : 'Sin ubicaciones'

            // Mostrar solo las 2 reseñas más recientes y acortadas
            const sortedResenas = (f.resenas || []).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt)).slice(0, 2)
            const resenas = sortedResenas.length > 0 ? sortedResenas.map(r => {
                const metodos = r.metodosPago ? Object.keys(r.metodosPago).filter(k => r.metodosPago[k]).join(',') : 'efectivo'
                const variedad = r.variedad ? Object.keys(r.variedad).filter(k => r.variedad[k]).join(',') : 'general'
                const comentario = r.comentario ? (r.comentario.length > 60 ? r.comentario.slice(0, 60) + '...' : r.comentario) : 'Sin comentarios'
                return `* ${r.calificacion}/5 | Precio: ${r.precio || 'medio'} | Pago: ${metodos} | Var: ${variedad} | "${comentario}"`
            }).join('\n') : 'Sin reseñas'

            return `Feria: "${f.nombre}" (ID: ${f.id}) | Tipo: ${f.tipo} | Comuna: ${comunaName}
Ubicaciones:
${ubicaciones}
Reseñas:
${resenas}
------------------`
        }).join('\n')

        return `Eres 'Casero Bot', el asistente virtual experto de 'ConYapa'. Tu misión es ayudar y recomendar ferias libres en Santiago de Chile de manera amigable, cercana y usando chilenismos.

Aquí tienes los datos de las ferias disponibles (filtradas por cercanía si el usuario compartió su ubicación):
${feriasInfo}

Reglas:
1. Recomienda solo ferias de la lista.
2. Si te piden ferias baratas, fíjate en las reseñas con precio "barato".
3. Responde de forma clara y concisa en Markdown (máximo 2 a 3 párrafos para no exceder los límites de tokens).`
    } catch (error) {
        console.error('Error al construir el System Prompt:', error)
        return `Eres 'Casero Bot' de 'ConYapa'. Ocurrió un error al cargar los datos, pero ayuda al usuario amablemente.`
    }
}

// POST /api/ia/chat
const chat = async (req, res, next) => {
    try {
        const { message, history, lat, lng } = req.body
        if (!message) {
            return res.status(400).json({ message: 'El mensaje es requerido.' })
        }

        const systemPrompt = await buildSystemPrompt(lat, lng)
        // Mantener solo los últimos 2 mensajes del historial para ahorrar tokens
        const chatHistory = (history || []).slice(-2)

        const formattedMessages = [
            { role: 'system', content: systemPrompt },
            ...chatHistory.map(msg => ({
                role: msg.sender === 'user' ? 'user' : 'assistant',
                content: msg.text
            })),
            { role: 'user', content: message }
        ]

        const chatCompletion = await openai.chat.completions.create({
            messages: formattedMessages,
            model: 'llama-3.1-8b-instant',
            temperature: 0.7,
            max_tokens: 500, // Limitar los tokens de respuesta a 500
        })

        const responseText = chatCompletion.choices[0]?.message?.content || 'Disculpa casero, no pude procesar tu mensaje en este momento.'
        res.json({ response: responseText })
    } catch (err) {
        next(err)
    }
}

// POST /api/ia/recomendaciones
const recomendaciones = async (req, res, next) => {
    try {
        const { preferences, lat, lng } = req.body
        const systemPrompt = await buildSystemPrompt(lat, lng)

        const chatCompletion = await openai.chat.completions.create({
            messages: [
                { role: 'system', content: systemPrompt },
                { role: 'user', content: `Dame recomendaciones personalizadas basadas en mis preferencias: ${JSON.stringify(preferences)}` }
            ],
            model: 'llama-3.1-8b-instant',
            temperature: 0.6,
            max_tokens: 500,
        })

        const responseText = chatCompletion.choices[0]?.message?.content || 'No logré generar recomendaciones personalizadas en este momento.'
        res.json({ response: responseText })
    } catch (err) {
        next(err)
    }
}

module.exports = {
    chat,
    recomendaciones
}
