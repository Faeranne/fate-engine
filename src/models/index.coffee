Sequelize = require 'sequelize'
config = require 'config'
DB = new Sequelize(config.get('db.url'), config.get('db.options'))

module.exports =
	db: DB
