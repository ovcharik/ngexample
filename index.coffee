Http    = require 'http'
Express = require 'express'

express = Express()
express.use '/', Express.static(__dirname + '/public')

http = Http.createServer express
http.listen 3000
