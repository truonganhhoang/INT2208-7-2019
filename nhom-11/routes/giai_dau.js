const express = require('express')
const router = express.Router();
var mysql = require('mysql');

var con_anh = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "clb_anh"
});
con_anh.connect();

router.get('/anh.html', function (req, res) {
  var sql = "SELECT * FROM anh.vong1;SELECT * FROM anh.vong2;SELECT * FROM anh.vong3;SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM arsenal UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM manutd UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM bournemouth UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM brighton UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM burnley UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM cardiff UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM chelsea UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM everton UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM fulham UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM huddersfields UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM leicester UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM liverpool UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM mancity UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM newcastle UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM palace UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM southampton UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM tottenham UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM wolves UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM watford UNION SELECT COUNT(`vong`) st, `logo_doibong` , `doibong`, SUM(IF(`banthang`>`banbai`,1,0)) w , SUM(IF(`banthang`<`banbai`,1,0)) l , SUM(IF(`banthang`=`banbai`,1,0)) d , (SUM(`banthang`)-SUM(`banbai`)) as hieuso , SUM(IF(`banthang`>`banbai`,3,IF(`banthang`<`banbai`,0,1))) as diem  FROM westham ORDER BY `diem`  DESC, hieuso DESC";
  con_anh.query(sql,[1,4], function(err, results) {
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
router.get('/taybannha.html', function (req, res) {
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
router.get('/duc.html', function (req, res) {
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
router.get('/phap.html', function (req, res) {
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
router.get('/italia.html', function (req, res) {
  var sql = "SELECT * FROM vong1;SELECT * FROM vong2;SELECT * FROM vong3";
  con_italia.query(sql,[1,3], function(err, results) {
    if (err) throw err;
    res.render('Giai_dau/italia', {results});
  });
});

module.exports = router;
