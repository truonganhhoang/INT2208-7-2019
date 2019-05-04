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
router.get('/alaves.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.alaves";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/alaves', {results});
  });
});

router.get('/atm.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.atm";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/atm', {results});
  });
});

router.get('/barcelona.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.barcelona";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/barcelona', {results});
  });
});

router.get('/bilbao.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.bilbao";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/bilbao', {results});
  });
});

router.get('/celtavigo.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.celtavigo";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/celtavigo', {results});
  });
});

router.get('/eibar.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.eibar";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/eibar', {results});
  });
});

router.get('/espanyol.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.espanyol";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/espanyol', {results});
  });
});

router.get('/getafe.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.getafe";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/getafe', {results});
  });
});

router.get('/girona.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.girona";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/girona', {results});
  });
});

router.get('/huesca.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.huesca";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/huesca', {results});
  });
});

router.get('/leganes.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.leganes";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/leganes', {results});
  });
});

router.get('/levante.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.levante";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/levante', {results});
  });
});

router.get('/rayo.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.vallecano";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/rayo', {results});
  });
});

router.get('/real.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.realmadrid";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/real', {results});
  });
});

router.get('/realbetis.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.realbetis";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/realbetis', {results});
  });
});

router.get('/sevilla.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.sevilla";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/sevilla', {results});
  });
});

router.get('/sociedad.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.sociedad";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/sociedad', {results});
  });
});

router.get('/valencia.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.valencia";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/valencia', {results});
  });
});

router.get('/valladolid.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.valladolid";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/valladolid', {results});
  });
});

router.get('/villareal.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_tbn.villarreal";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/villareal', {results});
  });
});

module.exports = router;
