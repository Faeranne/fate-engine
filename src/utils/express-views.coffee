## Initialize the view engine for Express 4

path = require 'path'

module.exports = (app) ->
	app.set 'views', path.join __dirname, '../views'
	app.set 'view engine', 'hbs'


