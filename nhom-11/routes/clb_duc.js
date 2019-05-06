const express = require('express')
const router = express.Router();
var mysql = require('mysql');
var con = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "cauthu_duc"
});
con.connect();
router.get('/augsburg.html', function (req, res) {
  var sql = "SELECT * FROM augsburg WHERE vitri = 'GK';SELECT * FROM augsburg WHERE vitri = 'DF';SELECT * FROM augsburg WHERE vitri = 'MF';SELECT * FROM augsburg WHERE vitri = 'FW';SELECT * FROM clb_duc.augsburg;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `augsburg`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.augsburg;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.augsburg WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.augsburg WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/augsburg', {results});
  });
});

router.get('/bayern.html', function (req, res) {
  var sql = "SELECT * FROM bayernmunich WHERE vitri = 'GK';SELECT * FROM bayernmunich WHERE vitri = 'DF';SELECT * FROM bayernmunich WHERE vitri = 'MF';SELECT * FROM bayernmunich WHERE vitri = 'FW';SELECT * FROM clb_duc.bayernmunich;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `bayernmunich`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.bayernmunich;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.bayernmunich WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.bayernmunich WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/bayern', {results});
  });
});

router.get('/bremen.html', function (req, res) {
  var sql = "SELECT * FROM werderbremen WHERE vitri = 'GK';SELECT * FROM werderbremen WHERE vitri = 'DF';SELECT * FROM werderbremen WHERE vitri = 'MF';SELECT * FROM werderbremen WHERE vitri = 'FW';SELECT * FROM clb_duc.werderbremen;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `werderbremen`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.werderbremen;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.werderbremen WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.werderbremen WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/bremen', {results});
  });
});

router.get('/dortmund.html', function (req, res) {
  var sql = "SELECT * FROM dortmund WHERE vitri = 'GK';SELECT * FROM dortmund WHERE vitri = 'DF';SELECT * FROM dortmund WHERE vitri = 'MF';SELECT * FROM dortmund WHERE vitri = 'FW';SELECT * FROM clb_duc.dortmund;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `dortmund`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.dortmund;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.dortmund WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.dortmund WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/dortmund', {results});
  });
});

router.get('/dusseldorf.html', function (req, res) {
  var sql = "SELECT * FROM dusseldorf WHERE vitri = 'GK';SELECT * FROM dusseldorf WHERE vitri = 'DF';SELECT * FROM dusseldorf WHERE vitri = 'MF';SELECT * FROM dusseldorf WHERE vitri = 'FW';SELECT * FROM clb_duc.dusseldorf;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `dusseldorf`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.dusseldorf;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.dusseldorf WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.dusseldorf WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/dusseldorf', {results});
  });
});

router.get('/frankfurt.html', function (req, res) {
  var sql = "SELECT * FROM frankfurt WHERE vitri = 'GK';SELECT * FROM frankfurt WHERE vitri = 'DF';SELECT * FROM frankfurt WHERE vitri = 'MF';SELECT * FROM frankfurt WHERE vitri = 'FW';SELECT * FROM clb_duc.frankfurt;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `frankfurt`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.frankfurt;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.frankfurt WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.frankfurt WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/frankfurt', {results});
  });
});

router.get('/freiburg.html', function (req, res) {
  var sql = "SELECT * FROM freiburg WHERE vitri = 'GK';SELECT * FROM freiburg WHERE vitri = 'DF';SELECT * FROM freiburg WHERE vitri = 'MF';SELECT * FROM freiburg WHERE vitri = 'FW';SELECT * FROM clb_duc.freiburg;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `freiburg`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.freiburg;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.freiburg WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.freiburg WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/freiburg', {results});
  });
});

router.get('/hannover.html', function (req, res) {
  var sql = "SELECT * FROM hannover WHERE vitri = 'GK';SELECT * FROM hannover WHERE vitri = 'DF';SELECT * FROM hannover WHERE vitri = 'MF';SELECT * FROM hannover WHERE vitri = 'FW';SELECT * FROM clb_duc.hannover;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `hannover`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.hannover;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.hannover WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.hannover WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/hannover', {results});
  });
});

router.get('/herthaberlin.html', function (req, res) {
  var sql = "SELECT * FROM herthaberlin WHERE vitri = 'GK';SELECT * FROM herthaberlin WHERE vitri = 'DF';SELECT * FROM herthaberlin WHERE vitri = 'MF';SELECT * FROM herthaberlin WHERE vitri = 'FW';SELECT * FROM clb_duc.herthaberlin;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `herthaberlin`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.herthaberlin;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.herthaberlin WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.herthaberlin WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/herthaberlin', {results});
  });
});

router.get('/hoffenheim.html', function (req, res) {
  var sql = "SELECT * FROM hoffenheim WHERE vitri = 'GK';SELECT * FROM hoffenheim WHERE vitri = 'DF';SELECT * FROM hoffenheim WHERE vitri = 'MF';SELECT * FROM hoffenheim WHERE vitri = 'FW';SELECT * FROM clb_duc.hoffenheim;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `hoffenheim`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.hoffenheim;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.hoffenheim WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.hoffenheim WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/hoffenheim', {results});
  });
});

router.get('/leipzig.html', function (req, res) {
  var sql = "SELECT * FROM leipzig WHERE vitri = 'GK';SELECT * FROM leipzig WHERE vitri = 'DF';SELECT * FROM leipzig WHERE vitri = 'MF';SELECT * FROM leipzig WHERE vitri = 'FW';SELECT * FROM clb_duc.leipzig;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `leipzig`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.leipzig;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.leipzig WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.leipzig WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/leipzig', {results});
  });
});

router.get('/leverkusen.html', function (req, res) {
  var sql = "SELECT * FROM bayerleverkusen WHERE vitri = 'GK';SELECT * FROM bayerleverkusen WHERE vitri = 'DF';SELECT * FROM bayerleverkusen WHERE vitri = 'MF';SELECT * FROM bayerleverkusen WHERE vitri = 'FW';SELECT * FROM clb_duc.bayerleverkusen;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `bayerleverkusen`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.bayerleverkusen;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.bayerleverkusen WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.bayerleverkusen WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/leverkusen', {results});
  });
});

router.get('/mainz05.html', function (req, res) {
  var sql = "SELECT * FROM mainz05 WHERE vitri = 'GK';SELECT * FROM mainz05 WHERE vitri = 'DF';SELECT * FROM mainz05 WHERE vitri = 'MF';SELECT * FROM mainz05 WHERE vitri = 'FW';SELECT * FROM clb_duc.mainz05;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `mainz05`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.mainz05;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.mainz05 WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.mainz05 WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/mainz05', {results});
  });
});

router.get('/monchengladbach.html', function (req, res) {
  var sql = "SELECT * FROM monchengladbach WHERE vitri = 'GK';SELECT * FROM monchengladbach WHERE vitri = 'DF';SELECT * FROM monchengladbach WHERE vitri = 'MF';SELECT * FROM monchengladbach WHERE vitri = 'FW';SELECT * FROM clb_duc.monchengladbach;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `monchengladbach`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.monchengladbach;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.monchengladbach WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.monchengladbach WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/monchengladbach', {results});
  });
});

router.get('/nurnberg.html', function (req, res) {
  var sql = "SELECT * FROM nurnberg WHERE vitri = 'GK';SELECT * FROM nurnberg WHERE vitri = 'DF';SELECT * FROM nurnberg WHERE vitri = 'MF';SELECT * FROM nurnberg WHERE vitri = 'FW';SELECT * FROM clb_duc.nurnberg;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `nurnberg`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.nurnberg;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.nurnberg WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.nurnberg WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/nurnberg', {results});
  });
});

router.get('/schalke04.html', function (req, res) {
  var sql = "SELECT * FROM schalke04 WHERE vitri = 'GK';SELECT * FROM schalke04 WHERE vitri = 'DF';SELECT * FROM schalke04 WHERE vitri = 'MF';SELECT * FROM schalke04 WHERE vitri = 'FW';SELECT * FROM clb_duc.schalke04;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `schalke04`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.schalke04;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.schalke04 WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.schalke04 WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/schalke04', {results});
  });
});

router.get('/stuttgart.html', function (req, res) {
  var sql = "SELECT * FROM stuttgart WHERE vitri = 'GK';SELECT * FROM stuttgart WHERE vitri = 'DF';SELECT * FROM stuttgart WHERE vitri = 'MF';SELECT * FROM stuttgart WHERE vitri = 'FW';SELECT * FROM clb_duc.stuttgart;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `stuttgart`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.stuttgart;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.stuttgart WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.stuttgart WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/stuttgart', {results});
  });
});

router.get('/wolfsburg.html', function (req, res) {
  var sql = "SELECT * FROM wolfsburg WHERE vitri = 'GK';SELECT * FROM wolfsburg WHERE vitri = 'DF';SELECT * FROM wolfsburg WHERE vitri = 'MF';SELECT * FROM wolfsburg WHERE vitri = 'FW';SELECT * FROM clb_duc.wolfsburg;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `wolfsburg`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_duc.wolfsburg;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.wolfsburg WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_duc.wolfsburg WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/wolfsburg', {results});
  });
});


module.exports = router;
