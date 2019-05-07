const express = require('express')
const router = express.Router();
var mysql = require('mysql');
var con = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "cauthu_tbn"
});
con.connect();
router.get('/alaves.html', function (req, res) {
  var sql = "SELECT * FROM alaves WHERE vitri = 'GK';SELECT * FROM alaves WHERE vitri = 'DF';SELECT * FROM alaves WHERE vitri = 'MF';SELECT * FROM alaves WHERE vitri = 'FW';SELECT * FROM clb_tbn.alaves;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `alaves`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.alaves;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.alaves WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.alaves WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/alaves', {results});
  });
});

router.get('/atm.html', function (req, res) {
  var sql = "SELECT * FROM atm WHERE vitri = 'GK';SELECT * FROM atm WHERE vitri = 'DF';SELECT * FROM atm WHERE vitri = 'MF';SELECT * FROM atm WHERE vitri = 'FW';SELECT * FROM clb_tbn.atm;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `atm`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.atm;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.atm WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.atm WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/atm', {results});
  });
});

router.get('/barcelona.html', function (req, res) {
  var sql = "SELECT * FROM barcelona WHERE vitri = 'GK';SELECT * FROM barcelona WHERE vitri = 'DF';SELECT * FROM barcelona WHERE vitri = 'MF';SELECT * FROM barcelona WHERE vitri = 'FW';SELECT * FROM clb_tbn.barcelona;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `barcelona`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.barcelona;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.barcelona WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.barcelona WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/barcelona', {results});
  });
});

router.get('/bilbao.html', function (req, res) {
  var sql = "SELECT * FROM bilbao WHERE vitri = 'GK';SELECT * FROM bilbao WHERE vitri = 'DF';SELECT * FROM bilbao WHERE vitri = 'MF';SELECT * FROM bilbao WHERE vitri = 'FW';SELECT * FROM clb_tbn.bilbao;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `bilbao`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.bilbao;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.bilbao WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.bilbao WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/bilbao', {results});
  });
});

router.get('/celtavigo.html', function (req, res) {
  var sql = "SELECT * FROM celtavigo WHERE vitri = 'GK';SELECT * FROM celtavigo WHERE vitri = 'DF';SELECT * FROM celtavigo WHERE vitri = 'MF';SELECT * FROM celtavigo WHERE vitri = 'FW';SELECT * FROM clb_tbn.celtavigo;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `celtavigo`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.celtavigo;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.celtavigo WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.celtavigo WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/celtavigo', {results});
  });
});

router.get('/eibar.html', function (req, res) {
  var sql = "SELECT * FROM eibar WHERE vitri = 'GK';SELECT * FROM eibar WHERE vitri = 'DF';SELECT * FROM eibar WHERE vitri = 'MF';SELECT * FROM eibar WHERE vitri = 'FW';SELECT * FROM clb_tbn.eibar;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `eibar`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.eibar;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.eibar WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.eibar WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/eibar', {results});
  });
});

router.get('/espanyol.html', function (req, res) {
  var sql = "SELECT * FROM espanyol WHERE vitri = 'GK';SELECT * FROM espanyol WHERE vitri = 'DF';SELECT * FROM espanyol WHERE vitri = 'MF';SELECT * FROM espanyol WHERE vitri = 'FW';SELECT * FROM clb_tbn.espanyol;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `espanyol`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.espanyol;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.espanyol WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.espanyol WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/espanyol', {results});
  });
});

router.get('/getafe.html', function (req, res) {
  var sql = "SELECT * FROM getafe WHERE vitri = 'GK';SELECT * FROM getafe WHERE vitri = 'DF';SELECT * FROM getafe WHERE vitri = 'MF';SELECT * FROM getafe WHERE vitri = 'FW';SELECT * FROM clb_tbn.getafe;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `getafe`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.getafe;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.getafe WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.getafe WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/getafe', {results});
  });
});

router.get('/girona.html', function (req, res) {
  var sql = "SELECT * FROM girona WHERE vitri = 'GK';SELECT * FROM girona WHERE vitri = 'DF';SELECT * FROM girona WHERE vitri = 'MF';SELECT * FROM girona WHERE vitri = 'FW';SELECT * FROM clb_tbn.girona;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `girona`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.girona;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.girona WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.girona WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/girona', {results});
  });
});

router.get('/huesca.html', function (req, res) {
  var sql = "SELECT * FROM huesca WHERE vitri = 'GK';SELECT * FROM huesca WHERE vitri = 'DF';SELECT * FROM huesca WHERE vitri = 'MF';SELECT * FROM huesca WHERE vitri = 'FW';SELECT * FROM clb_tbn.huesca;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `huesca`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.huesca;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.huesca WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.huesca WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/huesca', {results});
  });
});

router.get('/leganes.html', function (req, res) {
  var sql = "SELECT * FROM huesca WHERE vitri = 'GK';SELECT * FROM huesca WHERE vitri = 'DF';SELECT * FROM huesca WHERE vitri = 'MF';SELECT * FROM huesca WHERE vitri = 'FW';SELECT * FROM clb_tbn.leganes;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `leganes`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.leganes;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.leganes WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.leganes WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/leganes', {results});
  });
});

router.get('/levante.html', function (req, res) {
  var sql = "SELECT * FROM levante WHERE vitri = 'GK';SELECT * FROM levante WHERE vitri = 'DF';SELECT * FROM levante WHERE vitri = 'MF';SELECT * FROM levante WHERE vitri = 'FW';SELECT * FROM clb_tbn.levante;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `levante`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.levante;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.levante WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.levante WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/levante', {results});
  });
});

router.get('/rayo.html', function (req, res) {
  var sql = "SELECT * FROM vallecano WHERE vitri = 'GK';SELECT * FROM vallecano WHERE vitri = 'DF';SELECT * FROM vallecano WHERE vitri = 'MF';SELECT * FROM vallecano WHERE vitri = 'FW';SELECT * FROM clb_tbn.vallecano;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `vallecano`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.vallecano;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.vallecano WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.vallecano WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/rayo', {results});
  });
});

router.get('/real.html', function (req, res) {
  var sql = "SELECT * FROM real WHERE vitri = 'GK';SELECT * FROM real WHERE vitri = 'DF';SELECT * FROM real WHERE vitri = 'MF';SELECT * FROM real WHERE vitri = 'FW';SELECT * FROM clb_tbn.realmadrid;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `real`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.real;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.real WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.real WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/real', {results});
  });
});

router.get('/realbetis.html', function (req, res) {
  var sql = "SELECT * FROM realbetis WHERE vitri = 'GK';SELECT * FROM realbetis WHERE vitri = 'DF';SELECT * FROM realbetis WHERE vitri = 'MF';SELECT * FROM realbetis WHERE vitri = 'FW';SELECT * FROM clb_tbn.realbetis;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `realbetis`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.realbetis;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.realbetis WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.realbetis WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/realbetis', {results});
  });
});

router.get('/sevilla.html', function (req, res) {
  var sql = "SELECT * FROM sevilla WHERE vitri = 'GK';SELECT * FROM sevilla WHERE vitri = 'DF';SELECT * FROM sevilla WHERE vitri = 'MF';SELECT * FROM sevilla WHERE vitri = 'FW';SELECT * FROM clb_tbn.sevilla;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `sevilla`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.sevilla;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.sevilla WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.sevilla WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/sevilla', {results});
  });
});

router.get('/sociedad.html', function (req, res) {
  var sql = "SELECT * FROM sociedad WHERE vitri = 'GK';SELECT * FROM sociedad WHERE vitri = 'DF';SELECT * FROM sociedad WHERE vitri = 'MF';SELECT * FROM sociedad WHERE vitri = 'FW';SELECT * FROM clb_tbn.sociedad;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `sociedad`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.sociedad;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.sociedad WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.sociedad WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/sociedad', {results});
  });
});

router.get('/valencia.html', function (req, res) {
  var sql = "SELECT * FROM valencia WHERE vitri = 'GK';SELECT * FROM valencia WHERE vitri = 'DF';SELECT * FROM valencia WHERE vitri = 'MF';SELECT * FROM valencia WHERE vitri = 'FW';SELECT * FROM clb_tbn.valencia;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `valencia`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.valencia;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.valencia WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.valencia WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/valencia', {results});
  });
});

router.get('/valladolid.html', function (req, res) {
  var sql = "SELECT * FROM valladolid WHERE vitri = 'GK';SELECT * FROM valladolid WHERE vitri = 'DF';SELECT * FROM valladolid WHERE vitri = 'MF';SELECT * FROM valladolid WHERE vitri = 'FW';SELECT * FROM clb_tbn.valladolid;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `valladolid`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.valladolid;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.valladolid WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.valladolid WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/valladolid', {results});
  });
});

router.get('/villareal.html', function (req, res) {
  var sql = "SELECT * FROM villarreal WHERE vitri = 'GK';SELECT * FROM villarreal WHERE vitri = 'DF';SELECT * FROM villarreal WHERE vitri = 'MF';SELECT * FROM villarreal WHERE vitri = 'FW';SELECT * FROM clb_tbn.villarreal;SELECT SUM(`thedo`) td, SUM(`thevang`)tv FROM `villarreal`;SELECT SUM(`banthang`) bt , SUM(`banbai`) bb FROM clb_tbn.villarreal;SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.villarreal WHERE `san` = 'H';SELECT SUM(IF(`banthang`>`banbai`,1,0)) w,SUM(IF(`banthang`=`banbai`,1,0)) d,SUM(IF(`banthang`<`banbai`,1,0)) l FROM clb_tbn.villarreal WHERE `san` = 'A'";
  con.query(sql,[1,9], function(err, results) {
    if (err) throw err;
    res.render('CLB/TBN/villareal', {results});
  });
});

module.exports = router;
