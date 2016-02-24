express = require 'express'
config = require 'config'
app = express()

db = require './models'
require('./utils/')(app)

app.use require './routes'

app.listen config.get 'web.port'
