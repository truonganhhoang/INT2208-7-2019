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
router.get('/amiens.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.amiens";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/amiens', {results});
  });
});

router.get('/angers.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.angers";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/angers', {results});
  });
});

router.get('/bordeaux.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.bordeaux";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/bordeaux', {results});
  });
});

router.get('/caen.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.caen";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/caen', {results});
  });
});

router.get('/dijon.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.dijon";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/dijon', {results});
  });
});

router.get('/guingamp.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.guingamp";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/guingamp', {results});
  });
});

router.get('/lille.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.lille";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/lille', {results});
  });
});

router.get('/lyon.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.lyon";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/lyon', {results});
  });
});

router.get('/marseille.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.marseille";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/marseille', {results});
  });
});

router.get('/monaco.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.monaco";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/monaco', {results});
  });
});

router.get('/montpellier.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.montpellier";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/montpellier', {results});
  });
});

router.get('/nates.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.nantes";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/nantes', {results});
  });
});

router.get('/nice.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.nice";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/nice', {results});
  });
});

router.get('/nimes.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.nimes";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/nimes', {results});
  });
});

router.get('/psg.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.psg";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/psg', {results});
  });
});

router.get('/reims.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.reims";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/reims', {results});
  });
});

router.get('/rennais.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.rennais";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/rennais', {results});
  });
});

router.get('/saintetienne.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.saintetienne";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/saintetienne', {results});
  });
});

router.get('/strasbourg.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.strasbourg";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/strasbourg', {results});
  });
});

router.get('/toulouse.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_phap.toulouse";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/toulouse', {results});
  });
});

module.exports = router;
