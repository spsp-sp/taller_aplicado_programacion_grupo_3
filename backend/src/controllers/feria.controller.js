const { Feria, Feriante, Resena, Horario, Usuario } = require('../models')
const { Op } = require('sequelize')

// GET /api/ferias
const getAll = async (req, res, next) => {

}

// GET /api/ferias/nearby?lat=&lng=&radius=
const getNearby = async (req, res, next) => {

}

// GET /api/ferias/:id
const getById = async (req, res, next) => {

}

// POST /api/ferias
const create = async (req, res, next) => {

}

// PUT /api/ferias/:id
const update = async (req, res, next) => {

}

// DELETE /api/ferias/:id
const remove = async (req, res, next) => {

}

module.exports = { getAll, getNearby, getById, create, update, remove }
