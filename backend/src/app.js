const express = require('express')
const cors = require('cors')
const helmet = require('helmet')
const morgan = require('morgan')
const rateLimit = require('express-rate-limit')

const authRoutes     = require('./routes/auth.routes')
const feriaRoutes    = require('./routes/feria.routes')
const ferianteRoutes = require('./routes/feriante.routes')
const reseñaRoutes   = require('./routes/resena.routes')
const listaRoutes    = require('./routes/lista.routes')
const iaRoutes       = require('./routes/ia.routes')
const errorHandler   = require('./middleware/errorHandler')

const app = express()

// ── Security & logging ─────────────────────────────────────────────────────
app.use(helmet())
app.use(morgan(process.env.NODE_ENV === 'production' ? 'combined' : 'dev'))

// ── CORS ───────────────────────────────────────────────────────────────────
app.use(cors({
  origin: process.env.FRONTEND_URL || 'http://localhost:5173',
  credentials: true,
}))

// ── Body parsing ───────────────────────────────────────────────────────────
app.use(express.json({ limit: '10mb' }))
app.use(express.urlencoded({ extended: true }))

// ── Rate limiting ──────────────────────────────────────────────────────────
const limiter = rateLimit({
  windowMs: 15 * 60 * 1000, // 15 min
  max: 100,
  standardHeaders: true,
  legacyHeaders: false,
})
app.use('/api', limiter)

// ── Health check ───────────────────────────────────────────────────────────
app.get('/api/health', (_req, res) => res.json({ status: 'ok', timestamp: new Date() }))

// ── Routes ─────────────────────────────────────────────────────────────────
app.use('/api/auth',      authRoutes)
app.use('/api/ferias',    feriaRoutes)
app.use('/api/feriantes', ferianteRoutes)
app.use('/api/resenas',   reseñaRoutes)
app.use('/api/listas',    listaRoutes)
app.use('/api/ia',        iaRoutes)

// ── Global error handler ───────────────────────────────────────────────────
app.use(errorHandler)

module.exports = app
