const OpenAI = require('openai')

const client = new OpenAI({ apiKey: process.env.OPENAI_API_KEY })

const SYSTEM_PROMPT = `Eres el asistente virtual de ConYapa, una aplicación chilena para descubrir ferias libres y feriantes locales.
Ayudas a los usuarios a:
- Encontrar ferias según sus necesidades
- Recomendar qué comprar según la temporada
- Crear listas de compras inteligentes
- Resolver dudas sobre las ferias y feriantes
Responde siempre en español chileno, de forma amable y concisa.`

// POST /api/ia/chat
const chat = async (req, res, next) => {
  try {
    const { message, history = [] } = req.body

    const messages = [
      { role: 'system', content: SYSTEM_PROMPT },
      ...history.slice(-10), // last 10 messages for context
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
    next(err)
  }
}

// POST /api/ia/recomendaciones
const recomendaciones = async (req, res, next) => {
  try {
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
    next(err)
  }
}

module.exports = { chat, recomendaciones }
