var express = require('express');
var bodyparser = require('body-parser');
var cors = require('cors');


var connection = require('./dbConnection').connect;
var routes = require('./routes');
var fileUpload = require('express-fileupload');
var path = require('path');

var app = express();
app.use(cors());
app.use(bodyparser.urlencoded({
  extended: false
}));
app.use(bodyparser.json());
app.use(fileUpload());

app.use('/', routes);

app.get('*', (req, res) => {
    res.sendFile(path.join(__dirname, 'dist/index.html'));
});

var server = app.listen(3000, function () {
  console.log('Server listening on port '+ server.address().port);
});

module.exports = app;