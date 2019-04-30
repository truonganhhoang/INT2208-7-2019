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
  var sql = "SELECT * FROM augsburg WHERE vitri = 'GK';SELECT * FROM augsburg WHERE vitri = 'DF';SELECT * FROM augsburg WHERE vitri = 'MF';SELECT * FROM augsburg WHERE vitri = 'FW';SELECT * FROM clb_duc.augsburg";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/augsburg', {results});
  });
});

router.get('/bayern.html', function (req, res) {
  var sql = "SELECT * FROM bayernmunich WHERE vitri = 'GK';SELECT * FROM bayernmunich WHERE vitri = 'DF';SELECT * FROM bayernmunich WHERE vitri = 'MF';SELECT * FROM bayernmunich WHERE vitri = 'FW';SELECT * FROM clb_duc.bayernmunich";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/bayern', {results});
  });
});

router.get('/bremen.html', function (req, res) {
  var sql = "SELECT * FROM wenderbremen WHERE vitri = 'GK';SELECT * FROM wenderbremen WHERE vitri = 'DF';SELECT * FROM wenderbremen WHERE vitri = 'MF';SELECT * FROM wenderbremen WHERE vitri = 'FW';SELECT * FROM clb_duc.wenderbremen";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/bremen', {results});
  });
});

router.get('/dortmund.html', function (req, res) {
  var sql = "SELECT * FROM dortmund WHERE vitri = 'GK';SELECT * FROM dortmund WHERE vitri = 'DF';SELECT * FROM dortmund WHERE vitri = 'MF';SELECT * FROM dortmund WHERE vitri = 'FW';SELECT * FROM clb_duc.dortmund";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/dortmund', {results});
  });
});

router.get('/dusseldorf.html', function (req, res) {
  var sql = "SELECT * FROM dusseldorf WHERE vitri = 'GK';SELECT * FROM dusseldorf WHERE vitri = 'DF';SELECT * FROM dusseldorf WHERE vitri = 'MF';SELECT * FROM dusseldorf WHERE vitri = 'FW';SELECT * FROM clb_duc.dusseldorf";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/dusseldorf', {results});
  });
});

router.get('/frankfurt.html', function (req, res) {
  var sql = "SELECT * FROM frankfurt WHERE vitri = 'GK';SELECT * FROM frankfurt WHERE vitri = 'DF';SELECT * FROM frankfurt WHERE vitri = 'MF';SELECT * FROM frankfurt WHERE vitri = 'FW';SELECT * FROM clb_duc.frankfurt";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/frankfurt', {results});
  });
});

router.get('/freiburg.html', function (req, res) {
  var sql = "SELECT * FROM freiburg WHERE vitri = 'GK';SELECT * FROM freiburg WHERE vitri = 'DF';SELECT * FROM freiburg WHERE vitri = 'MF';SELECT * FROM freiburg WHERE vitri = 'FW';SELECT * FROM clb_duc.freiburg";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/freiburg', {results});
  });
});

router.get('/hannover.html', function (req, res) {
  var sql = "SELECT * FROM hannover96 WHERE vitri = 'GK';SELECT * FROM hannover96 WHERE vitri = 'DF';SELECT * FROM hannover96 WHERE vitri = 'MF';SELECT * FROM hannover96 WHERE vitri = 'FW';SELECT * FROM clb_duc.hannover";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/hannover', {results});
  });
});

router.get('/herthaberlin.html', function (req, res) {
  var sql = "SELECT * FROM herthaberlin WHERE vitri = 'GK';SELECT * FROM herthaberlin WHERE vitri = 'DF';SELECT * FROM herthaberlin WHERE vitri = 'MF';SELECT * FROM herthaberlin WHERE vitri = 'FW';SELECT * FROM clb_duc.herthaberlin";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/herthaberlin', {results});
  });
});

router.get('/hoffenheim.html', function (req, res) {
  var sql = "SELECT * FROM hoffenheim WHERE vitri = 'GK';SELECT * FROM hoffenheim WHERE vitri = 'DF';SELECT * FROM hoffenheim WHERE vitri = 'MF';SELECT * FROM hoffenheim WHERE vitri = 'FW';SELECT * FROM clb_duc.hoffenheim";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/hoffenheim', {results});
  });
});

router.get('/leipzig.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_duc.leipzig";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/leipzig', {results});
  });
});

router.get('/leverkusen.html', function (req, res) {
  var sql = "SELECT * FROM bayerleverkusen WHERE vitri = 'GK';SELECT * FROM bayerleverkusen WHERE vitri = 'DF';SELECT * FROM bayerleverkusen WHERE vitri = 'MF';SELECT * FROM bayerleverkusen WHERE vitri = 'FW';SELECT * FROM clb_duc.bayerleverkusen";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/leverkusen', {results});
  });
});

router.get('/mainz05.html', function (req, res) {
  var sql = "SELECT * FROM mainz05 WHERE vitri = 'GK';SELECT * FROM mainz05 WHERE vitri = 'DF';SELECT * FROM mainz05 WHERE vitri = 'MF';SELECT * FROM mainz05 WHERE vitri = 'FW';SELECT * FROM clb_duc.mainz05";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/mainz05', {results});
  });
});

router.get('/monchengladbach.html', function (req, res) {
  var sql = "SELECT * FROM monchengladbach WHERE vitri = 'GK';SELECT * FROM monchengladbach WHERE vitri = 'DF';SELECT * FROM monchengladbach WHERE vitri = 'MF';SELECT * FROM monchengladbach WHERE vitri = 'FW';SELECT * FROM clb_duc.monchengladbach";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/monchengladbach', {results});
  });
});

router.get('/nurnberg.html', function (req, res) {
  var sql = "SELECT * FROM nurnberg WHERE vitri = 'GK';SELECT * FROM nurnberg WHERE vitri = 'DF';SELECT * FROM nurnberg WHERE vitri = 'MF';SELECT * FROM nurnberg WHERE vitri = 'FW';SELECT * FROM clb_duc.nurnberg";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/nurnberg', {results});
  });
});

router.get('/schalke04.html', function (req, res) {
  var sql = "SELECT * FROM schalke04 WHERE vitri = 'GK';SELECT * FROM schalke04 WHERE vitri = 'DF';SELECT * FROM schalke04 WHERE vitri = 'MF';SELECT * FROM schalke04 WHERE vitri = 'FW';SELECT * FROM clb_duc.schalke04";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/schalke04', {results});
  });
});

router.get('/stuttgart.html', function (req, res) {
  var sql = "SELECT * FROM stuttgart WHERE vitri = 'GK';SELECT * FROM stuttgart WHERE vitri = 'DF';SELECT * FROM stuttgart WHERE vitri = 'MF';SELECT * FROM stuttgart WHERE vitri = 'FW';SELECT * FROM clb_duc.stuttgart";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/stuttgart', {results});
  });
});

router.get('/wolfsburg.html', function (req, res) {
  var sql = "SELECT * FROM wolfsburg WHERE vitri = 'GK';SELECT * FROM wolfsburg WHERE vitri = 'DF';SELECT * FROM wolfsburg WHERE vitri = 'MF';SELECT * FROM wolfsburg WHERE vitri = 'FW';SELECT * FROM clb_duc.wolfsburg";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Đức/wolfsburg', {results});
  });
});


module.exports = router;
