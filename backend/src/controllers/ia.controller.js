// ── Módulo IA (standby) ──────────────────────────────────────────────────────
// La clave OPENAI_API_KEY no está configurada en este entorno.
// El cliente se instancia de forma lazy (dentro de cada función) para que su
// ausencia NO bloquee el arranque del backend. Si la clave no existe, los
// endpoints responden 503 en lugar de crashear el servidor.
// ─────────────────────────────────────────────────────────────────────────────

const SYSTEM_PROMPT = `Eres el asistente virtual de ConYapa, una aplicación chilena para descubrir ferias libres y feriantes locales.
Ayudas a los usuarios a:
- Encontrar ferias según sus necesidades
- Recomendar qué comprar según la temporada
- Crear listas de compras inteligentes
- Resolver dudas sobre las ferias y feriantes
Responde siempre en español chileno, de forma amable y concisa.`

/**
 * Crea el cliente OpenAI de forma lazy.
 * Lanza un error legible si la API key no está disponible.
 */
function getClient() {
  if (!process.env.OPENAI_API_KEY) {
    throw new Error('IA_NO_DISPONIBLE')
  }
  const OpenAI = require('openai')
  return new OpenAI({ apiKey: process.env.OPENAI_API_KEY })
}

// POST /api/ia/chat
const chat = async (req, res, next) => {
  try {
    const client = getClient()
    const { message, history = [] } = req.body

    const messages = [
      { role: 'system', content: SYSTEM_PROMPT },
      ...history.slice(-10), // últimos 10 mensajes de contexto
      { role: 'user', content: message },
    ]

    const completion = await client.chat.completions.create({
      model: 'gpt-4o-mini',
      messages,
      max_tokens: 500,
      temperature: 0.7,
    })

    const reply = completion.choices[0].message.content
    res.json({ reply })
  } catch (err) {
    if (err.message === 'IA_NO_DISPONIBLE') {
      return res.status(503).json({
        error: 'Módulo de IA no disponible',
        mensaje: 'El asistente de IA está en standby. Por favor, configura una API key para habilitarlo.',
      })
    }
    next(err)
  }
}

// POST /api/ia/recomendaciones
const recomendaciones = async (req, res, next) => {
  try {
    const client = getClient()
    const { preferences } = req.body

    const prompt = `Basándote en estas preferencias del usuario: ${JSON.stringify(preferences)},
    sugiere 5 productos frescos de temporada que debería buscar en una feria libre chilena.
    Devuelve un JSON array con objetos: { nombre, categoria, descripcion }.`

    const completion = await client.chat.completions.create({
      model: 'gpt-4o-mini',
      messages: [
        { role: 'system', content: SYSTEM_PROMPT },
        { role: 'user', content: prompt },
      ],
      response_format: { type: 'json_object' },
      max_tokens: 600,
    })

    const result = JSON.parse(completion.choices[0].message.content)
    res.json(result)
  } catch (err) {
    if (err.message === 'IA_NO_DISPONIBLE') {
      return res.status(503).json({
        error: 'Módulo de IA no disponible',
        mensaje: 'El asistente de IA está en standby. Por favor, configura una API key para habilitarlo.',
        recomendaciones: [], // array vacío para que el frontend no crashee
      })
    }
    next(err)
  }
}

module.exports = { chat, recomendaciones }
