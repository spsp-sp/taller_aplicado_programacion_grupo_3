// ── Módulo IA (standby) ──────────────────────────────────────────────────────


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

}

// POST /api/ia/recomendaciones
const recomendaciones = async (req, res, next) => {

}

module.exports = { chat, recomendaciones }
