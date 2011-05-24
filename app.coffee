require.paths.unshift('./node_modules')

express = require 'express'
app = express.createServer()

# Setup Template Engine
app.register '.coffee', require('coffeekup')
app.set 'view engine', 'coffee'

# Setup Static Files
app.use express.static(__dirname + '/public')


app.get '/', (req, res) ->
  res.send 'hello world test using express and npm'

app.listen(process.env.VMC_APP_PORT || 4000)


