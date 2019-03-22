var express = require('express');
var bodyparser = require('body-parser');

var connection = require('./dbConnection').connect;
var routes = require('./routes');

var app = express();
app.use(bodyparser.urlencoded({
  extended: true
}));
app.use(bodyparser.json());

app.use('/', routes);

var server = app.listen(3000, function () {
  console.log('Server listening on port '+ server.address().port);
});

module.exports = app;