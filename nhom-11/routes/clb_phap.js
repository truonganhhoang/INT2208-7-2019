const express = require('express')
const router = express.Router();
var mysql = require('mysql');
var con = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "cauthu_phap"
});
con.connect();
router.get('/amiens.html', function (req, res) {
  var sql = "SELECT * FROM amiens WHERE vitri = 'GK';SELECT * FROM amiens WHERE vitri = 'DF';SELECT * FROM amiens WHERE vitri = 'MF';SELECT * FROM amiens WHERE vitri = 'FW';SELECT * FROM clb_phap.amiens;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `amiens`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.amiens;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.amiens WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.amiens WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/amiens', {results});
  });
});

router.get('/angers.html', function (req, res) {
  var sql = "SELECT * FROM angers WHERE vitri = 'GK';SELECT * FROM angers WHERE vitri = 'DF';SELECT * FROM angers WHERE vitri = 'MF';SELECT * FROM angers WHERE vitri = 'FW';SELECT * FROM clb_phap.angers;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `angers`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.angers;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.angers WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.angers WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/angers', {results});
  });
});

router.get('/bordeaux.html', function (req, res) {
  var sql = "SELECT * FROM bordeaux WHERE vitri = 'GK';SELECT * FROM bordeaux WHERE vitri = 'DF';SELECT * FROM bordeaux WHERE vitri = 'MF';SELECT * FROM bordeaux WHERE vitri = 'FW';SELECT * FROM clb_phap.bordeaux;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `bordeaux`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.bordeaux;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.bordeaux WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.bordeaux WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/bordeaux', {results});
  });
});

router.get('/caen.html', function (req, res) {
  var sql = "SELECT * FROM caen WHERE vitri = 'GK';SELECT * FROM caen WHERE vitri = 'DF';SELECT * FROM caen WHERE vitri = 'MF';SELECT * FROM caen WHERE vitri = 'FW';SELECT * FROM clb_phap.caen;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `caen`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.caen;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.caen WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.caen WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/caen', {results});
  });
});

router.get('/dijon.html', function (req, res) {
  var sql = "SELECT * FROM dijon vitri = 'GK';SELECT * FROM dijon WHERE vitri = 'DF';SELECT * FROM dijon WHERE vitri = 'MF';SELECT * FROM dijon WHERE vitri = 'FW';SELECT * FROM clb_phap.dijon;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `dijon`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.dijon;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.dijon WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.dijon WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/dijon', {results});
  });
});

router.get('/guingamp.html', function (req, res) {
  var sql = "SELECT * FROM guingamp WHERE vitri = 'GK';SELECT * FROM guingamp WHERE vitri = 'DF';SELECT * FROM guingamp WHERE vitri = 'MF';SELECT * FROM guingamp WHERE vitri = 'FW';SELECT * FROM clb_phap.guingamp;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `guingamp`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.guingamp;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.guingamp WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.guingamp WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/guingamp', {results});
  });
});

router.get('/lille.html', function (req, res) {
  var sql = "SELECT * FROM lille WHERE vitri = 'GK';SELECT * FROM lille WHERE vitri = 'DF';SELECT * FROM lille WHERE vitri = 'MF';SELECT * FROM lille WHERE vitri = 'FW';SELECT * FROM clb_phap.lille;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `lille`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.lille;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.lille WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.lille WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/lille', {results});
  });
});

router.get('/lyon.html', function (req, res) {
  var sql = "SELECT * FROM lyon WHERE vitri = 'GK';SELECT * FROM lyon WHERE vitri = 'DF';SELECT * FROM lyon WHERE vitri = 'MF';SELECT * FROM lyon WHERE vitri = 'FW';SELECT * FROM clb_phap.lyon;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `lyon`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.lyon;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.lyon WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.lyon WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/lyon', {results});
  });
});

router.get('/marseille.html', function (req, res) {
  var sql = "SELECT * FROM marseille WHERE vitri = 'GK';SELECT * FROM marseille WHERE vitri = 'DF';SELECT * FROM marseille WHERE vitri = 'MF';SELECT * FROM marseille WHERE vitri = 'FW';SELECT * FROM clb_phap.marseille;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `marseille`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.marseille;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.marseille WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.marseille WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/marseille', {results});
  });
});

router.get('/monaco.html', function (req, res) {
  var sql = "SELECT * FROM monaco WHERE vitri = 'GK';SELECT * FROM monaco WHERE vitri = 'DF';SELECT * FROM monaco WHERE vitri = 'MF';SELECT * FROM monaco WHERE vitri = 'FW';SELECT * FROM clb_phap.monaco;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `monaco`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.monaco;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.monaco WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.monaco WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/monaco', {results});
  });
});

router.get('/montpellier.html', function (req, res) {
  var sql = "SELECT * FROM montpellier WHERE vitri = 'GK';SELECT * FROM montpellier WHERE vitri = 'DF';SELECT * FROM montpellier WHERE vitri = 'MF';SELECT * FROM montpellier WHERE vitri = 'FW';SELECT * FROM clb_phap.montpellier;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `montpellier`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.montpellier;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.montpellier WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.montpellier WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/montpellier', {results});
  });
});

router.get('/nates.html', function (req, res) {
  var sql = "SELECT * FROM nantes WHERE vitri = 'GK';SELECT * FROM nantes WHERE vitri = 'DF';SELECT * FROM nantes WHERE vitri = 'MF';SELECT * FROM nantes WHERE vitri = 'FW';SELECT * FROM clb_phap.nantes;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `nantes`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.nantes;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.nantes WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.nantes WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/nantes', {results});
  });
});

router.get('/nice.html', function (req, res) {
  var sql = "SELECT * FROM nice WHERE vitri = 'GK';SELECT * FROM nice WHERE vitri = 'DF';SELECT * FROM nice WHERE vitri = 'MF';SELECT * FROM nice WHERE vitri = 'FW';SELECT * FROM clb_phap.nice;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `nice`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.nice;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.nice WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.nice WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/nice', {results});
  });
});

router.get('/nimes.html', function (req, res) {
  var sql = "SELECT * FROM nimes WHERE vitri = 'GK';SELECT * FROM nimes WHERE vitri = 'DF';SELECT * FROM nimes WHERE vitri = 'MF';SELECT * FROM nimes WHERE vitri = 'FW';SELECT * FROM clb_phap.nimes;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `nimes`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.nimes;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.nimes WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.nimes WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/nimes', {results});
  });
});

router.get('/psg.html', function (req, res) {
  var sql = "SELECT * FROM psg WHERE vitri = 'GK';SELECT * FROM psg WHERE vitri = 'DF';SELECT * FROM psg WHERE vitri = 'MF';SELECT * FROM psg WHERE vitri = 'FW';SELECT * FROM clb_phap.psg;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `psg`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.psg;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.psg WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.psg WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/psg', {results});
  });
});

router.get('/reims.html', function (req, res) {
  var sql = "SELECT * FROM reims WHERE vitri = 'GK';SELECT * FROM reims WHERE vitri = 'DF';SELECT * FROM reims WHERE vitri = 'MF';SELECT * FROM reims WHERE vitri = 'FW';SELECT * FROM clb_phap.reims;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `reims`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.reims;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.reims WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.reims WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/reims', {results});
  });
});

router.get('/rennais.html', function (req, res) {
  var sql = "SELECT * FROM rennais WHERE vitri = 'GK';SELECT * FROM rennais WHERE vitri = 'DF';SELECT * FROM rennais WHERE vitri = 'MF';SELECT * FROM rennais WHERE vitri = 'FW';SELECT * FROM clb_phap.rennais;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `rennais`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.rennais;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.rennais WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.rennais WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/rennais', {results});
  });
});

router.get('/saintetienne.html', function (req, res) {
  var sql = "SELECT * FROM saintetienne WHERE vitri = 'GK';SELECT * FROM saintetienne WHERE vitri = 'DF';SELECT * FROM saintetienne WHERE vitri = 'MF';SELECT * FROM saintetienne WHERE vitri = 'FW';SELECT * FROM clb_phap.saintetienne;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `saintetienne`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.saintetienne;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.saintetienne WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.saintetienne WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/saintetienne', {results});
  });
});

router.get('/strabourg.html', function (req, res) {
  var sql = "SELECT * FROM strasbourg WHERE vitri = 'GK';SELECT * FROM strasbourg WHERE vitri = 'DF';SELECT * FROM strasbourg WHERE vitri = 'MF';SELECT * FROM strasbourg WHERE vitri = 'FW';SELECT * FROM clb_phap.strasbourg;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `strasbourg`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.strasbourg;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.strasbourg WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.strasbourg WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/strabourg', {results});
  });
});

router.get('/toulouse.html', function (req, res) {
  var sql = "SELECT * FROM toulouse WHERE vitri = 'GK';SELECT * FROM toulouse WHERE vitri = 'DF';SELECT * FROM toulouse WHERE vitri = 'MF';SELECT * FROM toulouse WHERE vitri = 'FW';SELECT * FROM clb_phap.toulouse;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `toulouse`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_phap.toulouse;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.toulouse WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_phap.toulouse WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/Pháp/toulouse', {results});
  });
});

module.exports = router;
