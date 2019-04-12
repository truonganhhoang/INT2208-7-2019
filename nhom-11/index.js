var express = require('express');
var mysql = require('mysql');
var app = express();
var http =require('http').Server(app);
var bodyParser = require('body-parser');
var jsonParser = bodyParser.json();

var urlencodedParser =  bodyParser.urlencoded({extended :false})
app.set('view engine','ejs');
app.set('views', './views');
app.use(express.static(__dirname + '/public'));

var con_anh = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "anh"
});
var con_tbn = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "taybannha"
});
var con_duc = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "duc"
});
var con_phap = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "phap"
});
var con_italia = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "italia"
});
con_anh.connect();
con_tbn.connect();
con_duc.connect();
con_italia.connect();
con_phap.connect();
app.get('/score.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2";
  con_anh.query(sql,[1,2], function(err, results) {
    if (err) throw err;
    res.render('score', {results});
  });
});
app.get('/anh.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_anh.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/anh', {results});
  });
});
app.get('/taybannha.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_tbn.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/taybannha', {results});
  });
});
app.get('/duc.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_duc.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/duc', {results});
  });
});
app.get('/italia.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_italia.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/italia', {results});
  });
});
app.get('/phap.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_phap.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/phap', {results});
  });
});
app.get('/match.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_anh.query(sql,[1,2], function(err, results) {
    if (err) throw err;
    res.render('Thong_ke/match', {results});
  });
});


http.listen(process.env.PORT || 8888, function(){
  console.log('listening on *:8888');
});
