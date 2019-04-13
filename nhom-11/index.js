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
con_anh.connect();
app.get('/anh.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_anh.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/anh', {results});
  });
});
var con_tbn = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "taybannha"
});
con_tbn.connect();
app.get('/taybannha.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_tbn.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/taybannha', {results});
  });
});
var con_duc = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "duc"
});
con_duc.connect();
app.get('/duc.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_duc.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/duc', {results});
  });
});
var con_phap = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "phap"
});
con_phap.connect();
app.get('/phap.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_phap.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/phap', {results});
  });
});
var con_italia = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "italia"
});
con_italia.connect();
app.get('/italia.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_italia.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/italia', {results});
  });
});
var con_clb_anh = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "clb_anh"
});
app.get('/score.html', function (req, res) {
  var sql = "SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM arsenal UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM manutd UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM bournemouth UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM brighton UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM burnley UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM cardiff UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM chelsea UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM everton UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM fulham UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM huddersfields UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM leicester UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM liverpool UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM mancity UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM newcastle UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM palace UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM southampton UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM tottenham UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM wolves UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM watford UNION SELECT COUNT(`vong`), `logo_doibong` , `doibong`, SUM(`banthang`) bt , SUM(`banbai`) , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM westham ORDER BY `diem`  DESC, hieuso DESC,bt DESC";
  con_clb_anh.query(sql, function(err, results) {
    if (err) throw err;
    res.render('score', {results});
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
