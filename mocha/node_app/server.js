var express = require('express');
var path = require('path');
var app = express()
var server = require('http').createServer(app);
var port = process.env.PORT || 3000;


// Setting up the routes 
var routes = require('./config/routes')
app.use(routes);

server.listen(3000, function(){
    console.log('APP LISTENING');
});
