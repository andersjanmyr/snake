require.paths.unshift('./node_modules');

var app = require('express').createServer();

app.get('/', function(req, res){
    res.send('hello world test using express and npm');
});
app.listen(process.env.VMC_APP_PORT || 3000);


