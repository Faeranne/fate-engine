fs = require 'fs'
path = require 'path'

module.exports = (app) ->
	fs.readdirSync __dirname
		.forEach (file) ->
			require(path.join __dirname, file)(app)
