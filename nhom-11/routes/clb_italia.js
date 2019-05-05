const express = require('express')
const router = express.Router();
var mysql = require('mysql');
var con = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "cauthu_y"
});
con.connect();
router.get('/atalanta.html', function (req, res) {
  var sql = "SELECT * FROM atalanta WHERE vitri = 'GK';SELECT * FROM atalanta WHERE vitri = 'DF';SELECT * FROM atalanta WHERE vitri = 'MF';SELECT * FROM atalanta WHERE vitri = 'FW';SELECT * FROM clb_italia.atalanta;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `atalanta`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.atalanta;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.atalanta WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.atalanta WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/atalanta', {results});
  });
});

router.get('/bologna.html', function (req, res) {
  var sql = "SELECT * FROM bologna WHERE vitri = 'GK';SELECT * FROM bologna WHERE vitri = 'DF';SELECT * FROM bologna WHERE vitri = 'MF';SELECT * FROM bologna WHERE vitri = 'FW';SELECT * FROM clb_italia.bologna;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `bologna`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.bologna;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.bologna WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.bologna WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/bologna', {results});
  });
});

router.get('/cagliari.html', function (req, res) {
  var sql = "SELECT * FROM cagliari WHERE vitri = 'GK';SELECT * FROM cagliari WHERE vitri = 'DF';SELECT * FROM cagliari WHERE vitri = 'MF';SELECT * FROM cagliari WHERE vitri = 'FW';SELECT * FROM clb_italia.cagliari;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `cagliari`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.cagliari;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.cagliari WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.cagliari WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/cagliari', {results});
  });
});

router.get('/chievo.html', function (req, res) {
  var sql = "SELECT * FROM chievo WHERE vitri = 'GK';SELECT * FROM chievo WHERE vitri = 'DF';SELECT * FROM chievo WHERE vitri = 'MF';SELECT * FROM chievo WHERE vitri = 'FW';SELECT * FROM clb_italia.chievo;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `chievo`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.chievo;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.chievo WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.chievo WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/chievo', {results});
  });
});

router.get('/empoli.html', function (req, res) {
  var sql = "SELECT * FROM empoli WHERE vitri = 'GK';SELECT * FROM empoli WHERE vitri = 'DF';SELECT * FROM empoli WHERE vitri = 'MF';SELECT * FROM empoli WHERE vitri = 'FW';SELECT * FROM clb_italia.empoli;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `empoli`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.empoli;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.empoli WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.empoli WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/empoli', {results});
  });
});

router.get('/fiorentina.html', function (req, res) {
  var sql = "SELECT * FROM fiorentina WHERE vitri = 'GK';SELECT * FROM fiorentina WHERE vitri = 'DF';SELECT * FROM fiorentina WHERE vitri = 'MF';SELECT * FROM fiorentina WHERE vitri = 'FW';SELECT * FROM clb_italia.fiorentina;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `fiorentina`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.fiorentina;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.fiorentina WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.fiorentina WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/fiorentina', {results});
  });
});

router.get('/frosinone.html', function (req, res) {
  var sql = "SELECT * FROM frosinone WHERE vitri = 'GK';SELECT * FROM frosinone WHERE vitri = 'DF';SELECT * FROM frosinone WHERE vitri = 'MF';SELECT * FROM frosinone WHERE vitri = 'FW';SELECT * FROM clb_italia.frosinone;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `frosinone`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.frosinone;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.frosinone WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.frosinone WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/frosinone', {results});
  });
});

router.get('/genoa.html', function (req, res) {
  var sql = "SELECT * FROM genoa WHERE vitri = 'GK';SELECT * FROM genoa WHERE vitri = 'DF';SELECT * FROM genoa WHERE vitri = 'MF';SELECT * FROM genoa WHERE vitri = 'FW';SELECT * FROM clb_italia.genoa;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `genoa`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.genoa;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.genoa WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.genoa WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/genoa', {results});
  });
});

router.get('/inter.html', function (req, res) {
  var sql = "SELECT * FROM intermilan WHERE vitri = 'GK';SELECT * FROM intermilan WHERE vitri = 'DF';SELECT * FROM intermilan WHERE vitri = 'MF';SELECT * FROM intermilan WHERE vitri = 'FW';SELECT * FROM clb_italia.intermilan;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `intermilan`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.intermilan;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.intermilan WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.intermilan WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/inter', {results});
  });
});

router.get('/juventus.html', function (req, res) {
  var sql = "SELECT * FROM juventus WHERE vitri = 'GK';SELECT * FROM juventus WHERE vitri = 'DF';SELECT * FROM juventus WHERE vitri = 'MF';SELECT * FROM juventus WHERE vitri = 'FW';SELECT * FROM clb_italia.juventus;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `juventus`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.juventus;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.juventus WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.juventus WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/juventus', {results});
  });
});

router.get('/lazio.html', function (req, res) {
  var sql = "SELECT * FROM lazio WHERE vitri = 'GK';SELECT * FROM lazio WHERE vitri = 'DF';SELECT * FROM lazio WHERE vitri = 'MF';SELECT * FROM lazio WHERE vitri = 'FW';SELECT * FROM clb_italia.lazio;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `lazio`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.lazio;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.lazio WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.lazio WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/lazio', {results});
  });
});

router.get('/milan.html', function (req, res) {
  var sql = "SELECT * FROM acmilan WHERE vitri = 'GK';SELECT * FROM acmilan WHERE vitri = 'DF';SELECT * FROM acmilan WHERE vitri = 'MF';SELECT * FROM acmilan WHERE vitri = 'FW';SELECT * FROM clb_italia.acmilan;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `acmilan`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.acmilan;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.acmilan WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.acmilan WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/milan', {results});
  });
});

router.get('/napoli.html', function (req, res) {
  var sql = "SELECT * FROM napoli WHERE vitri = 'GK';SELECT * FROM napoli WHERE vitri = 'DF';SELECT * FROM napoli WHERE vitri = 'MF';SELECT * FROM napoli WHERE vitri = 'FW';SELECT * FROM clb_italia.napoli;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `napoli`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.napo;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.napoli WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.napoli WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/napoli', {results});
  });
});

router.get('/parma.html', function (req, res) {
  var sql = "SELECT * FROM parma WHERE vitri = 'GK';SELECT * FROM parma WHERE vitri = 'DF';SELECT * FROM parma WHERE vitri = 'MF';SELECT * FROM parma WHERE vitri = 'FW';SELECT * FROM clb_italia.parma;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `parma`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.parma;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.parma WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.parma WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/parma', {results});
  });
});

router.get('/roma.html', function (req, res) {
  var sql = "SELECT * FROM asroma WHERE vitri = 'GK';SELECT * FROM asroma WHERE vitri = 'DF';SELECT * FROM asroma WHERE vitri = 'MF';SELECT * FROM asroma WHERE vitri = 'FW';SELECT * FROM clb_italia.asroma;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `asroma`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.asroma;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.asroma WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.asroma WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/roma', {results});
  });
});

router.get('/sampdoria.html', function (req, res) {
  var sql = "SELECT * FROM sampdoria WHERE vitri = 'GK';SELECT * FROM sampdoria WHERE vitri = 'DF';SELECT * FROM sampdoria WHERE vitri = 'MF';SELECT * FROM sampdoria WHERE vitri = 'FW';SELECT * FROM clb_italia.sampdoria;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `sampdoria`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.sampdoria;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.sampdoria WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.sampdoria WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/sampdoria', {results});
  });
});

router.get('/sassuolo.html', function (req, res) {
  var sql = "SELECT * FROM sassuolo WHERE vitri = 'GK';SELECT * FROM sassuolo WHERE vitri = 'DF';SELECT * FROM sassuolo WHERE vitri = 'MF';SELECT * FROM sassuolo WHERE vitri = 'FW';SELECT * FROM clb_italia.sassuolo;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `sassuolo`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.sassuolo;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.sassuolo WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.sassuolo WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/sassuolo', {results});
  });
});

router.get('/spal.html', function (req, res) {
  var sql = "SELECT * FROM spal WHERE vitri = 'GK';SELECT * FROM spal WHERE vitri = 'DF';SELECT * FROM spal WHERE vitri = 'MF';SELECT * FROM spal WHERE vitri = 'FW';SELECT * FROM clb_italia.spal;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `spal`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.spal;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.spal WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.spal WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/spal', {results});
  });
});

router.get('/torino.html', function (req, res) {
  var sql = "SELECT * FROM torino WHERE vitri = 'GK';SELECT * FROM torino WHERE vitri = 'DF';SELECT * FROM torino WHERE vitri = 'MF';SELECT * FROM torino WHERE vitri = 'FW';SELECT * FROM clb_italia.torino;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `torino`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.torino;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.torino WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.torino WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/torino', {results});
  });
});

router.get('/udinese.html', function (req, res) {
  var sql = "SELECT * FROM udinese WHERE vitri = 'GK';SELECT * FROM udinese WHERE vitri = 'DF';SELECT * FROM udinese WHERE vitri = 'MF';SELECT * FROM udinese WHERE vitri = 'FW';SELECT * FROM clb_italia.udinese;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `udinese`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_italia.udinese;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.udinese WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_italia.udinese WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Italia/udinese', {results});
  });
});

module.exports = router;
