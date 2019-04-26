const express = require('express')
const router = express.Router();
var mysql = require('mysql');
var con = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "cauthu_anh"
});
con.connect();
router.get('/mancity.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.mancity";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/mancity', {results});
  });
});

router.get('/arsenal.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.arsenal";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/arsenal', {results});
  });
});

router.get('/bournemouth.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.bournemouth";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/bournemouth', {results});
  });
});

router.get('/brighton.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.brighton";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/brighton', {results});
  });
});

router.get('/burnley.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.burnley";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/burnley', {results});
  });
});

router.get('/cardiff.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.cardiff";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/cardiff', {results});
  });
});

router.get('/chelsea.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.chelsea";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/chelsea', {results});
  });
});

router.get('/everton.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.everton";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/everton', {results});
  });
});

router.get('/fulham.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.fulham";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/fulham', {results});
  });
});

router.get('/huddersfield.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.huddersfields";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/huddersfield', {results});
  });
});

router.get('/leicester.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.leicester";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/leicester', {results});
  });
});

router.get('/liverpool.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.liverpool";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/liverpool', {results});
  });
});

router.get('/manutd.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.manutd";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/manutd', {results});
  });
});

router.get('/newcastle.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.newcastle";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/newcastle', {results});
  });
});

router.get('/palace.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.palace";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/palace', {results});
  });
});

router.get('/southampton.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.southampton";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/southampton', {results});
  });
});

router.get('/tottenham.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.tottenham";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/tottenham', {results});
  });
});

router.get('/watford.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.watford";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/watford', {results});
  });
});

router.get('/westham.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.westham";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/westham', {results});
  });
});

router.get('/wolves.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.wolves";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/wolves', {results});
  });
});

module.exports = router;
