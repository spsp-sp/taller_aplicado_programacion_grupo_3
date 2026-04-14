// eslint-disable-next-line no-unused-vars
const errorHandler = (err, req, res, next) => {
  console.error(`[ERROR] ${req.method} ${req.url} →`, err.message)

  // Sequelize validation errors
  if (err.name === 'SequelizeValidationError') {
    return res.status(422).json({
      message: 'Error de validación.',
      errors: err.errors.map((e) => ({ field: e.path, message: e.message })),
    })
  }

  // Sequelize unique constraint
  if (err.name === 'SequelizeUniqueConstraintError') {
    return res.status(409).json({ message: 'El recurso ya existe.' })
  }

  // JWT errors
  if (err.name === 'JsonWebTokenError') {
    return res.status(401).json({ message: 'Token inválido.' })
  }

  const status = err.status || err.statusCode || 500
  res.status(status).json({
    message: err.message || 'Error interno del servidor.',
  })
}

module.exports = errorHandler
