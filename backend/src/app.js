const express = require('express')
const cors = require('cors')
const helmet = require('helmet')
const morgan = require('morgan')
const rateLimit = require('express-rate-limit')

const authRoutes = require('./routes/auth.routes')
const feriaRoutes = require('./routes/feria.routes')
const ferianteRoutes = require('./routes/feriante.routes')
const reseñaRoutes = require('./routes/resena.routes')
const listaRoutes = require('./routes/lista.routes')
const iaRoutes = require('./routes/ia.routes')
const comunaRoutes = require('./routes/comuna.routes')
const errorHandler = require('./middleware/errorHandler')

const app = express()

// ── Security & logging ─────────────────────────────────────────────────────
app.use(helmet())
app.use(morgan(process.env.NODE_ENV === 'production' ? 'combined' : 'dev'))

// ── CORS ───────────────────────────────────────────────────────────────────
const allowedOrigins = [
  'http://localhost:5173',
  'http://localhost:3000',
]

app.use(cors({
  origin: (origin, callback) => {
    // Permitir peticiones sin origen (como Postman o peticiones del propio servidor)
    if (!origin) return callback(null, true)

    const isLocal = allowedOrigins.includes(origin) || /^http:\/\/localhost(:\d+)?$/.test(origin)
    const isVercel = /^https:\/\/taller-aplicado-programacion-grupo-3.*\.vercel\.app$/.test(origin)
    const isConfigured = origin === process.env.FRONTEND_URL

    if (isLocal || isVercel || isConfigured) {
      callback(null, true)
    } else {
      callback(new Error('Not allowed by CORS'))
    }
  },
  credentials: true,
}))

// ── Body parsing ───────────────────────────────────────────────────────────
app.use(express.json({ limit: '10mb' }))
app.use(express.urlencoded({ extended: true }))

// ── Rate limiting ──────────────────────────────────────────────────────────
const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 min
  max: 1000,
  standardHeaders: true,
  legacyHeaders: false,
})
app.use('/api', limiter)

// ── Health check ───────────────────────────────────────────────────────────
app.get('/api/health', (_req, res) => res.json({ status: 'ok', timestamp: new Date() }))

// ── Routes ─────────────────────────────────────────────────────────────────
app.use('/api/auth', authRoutes)
app.use('/api/ferias', feriaRoutes)
app.use('/api/feriantes', ferianteRoutes)
app.use('/api/resenas', reseñaRoutes)
app.use('/api/listas', listaRoutes)
app.use('/api/ia', iaRoutes)
app.use('/api/comunas', comunaRoutes)

// ── Global error handler ───────────────────────────────────────────────────
app.use(errorHandler)

module.exports = app
