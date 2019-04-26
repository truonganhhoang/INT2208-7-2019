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
router.get('/atalanta.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.atalanta";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/atalanta', {results});
  });
});

router.get('/bologna.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.bologna";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/bologna', {results});
  });
});

router.get('/cagliari.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.cagliari";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/cagliari', {results});
  });
});

router.get('/chievo.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.chievo";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/chievo', {results});
  });
});

router.get('/empoli.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.empoli";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/empoli', {results});
  });
});

router.get('/fiorentina.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.fiorentina";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/fiorentina', {results});
  });
});

router.get('/frosinone.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.frosinone";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/frosinone', {results});
  });
});

router.get('/genoa.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.genoa";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/genoa', {results});
  });
});

router.get('/inter.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.intermilan";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/inter', {results});
  });
});

router.get('/juventus.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.juventus";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/juventus', {results});
  });
});

router.get('/lazio.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.lazio";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/lazio', {results});
  });
});

router.get('/milan.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.acmilan";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/milan', {results});
  });
});

router.get('/napoli.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.napoli";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/napoli', {results});
  });
});

router.get('/parma.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.parma";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/parma', {results});
  });
});

router.get('/roma.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.asroma";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/roma', {results});
  });
});

router.get('/sampdoria.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.sampdoria";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/sampdoria', {results});
  });
});

router.get('/sassuolo.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.sassuolo";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/sassuolo', {results});
  });
});

router.get('/spal.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.spal";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/spal', {results});
  });
});

router.get('/torino.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.torino";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/torino', {results});
  });
});

router.get('/udinese.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_italia.udinese";
  con.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/udinese', {results});
  });
});

module.exports = router;
