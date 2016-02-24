## Generic Express 4 initialization code
express = require 'express'
config = require 'config'
path = require 'path'
session = require 'express-session'
bodyParser = require 'body-parser'
module.exports = (app) ->
	app.use bodyParser.urlencoded extended: true
	app.use bodyParser.json()
	app.use session
		secret: config.get 'webServe.session.secret'
	app.use express.static path.join __dirname, '../../static/'
