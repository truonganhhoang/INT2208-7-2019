const express = require('express')
const router = express.Router();
var mysql = require('mysql');
var con_italia = mysql.createConnection({
  multipleStatements: true,
  host: "127.0.0.1",
  user: "root",
  password: "",
  database: "cauthu_anh"
});
con_italia.connect();
router.get('/Mancity.html', function (req, res) {
  var sql = "SELECT * FROM mancity WHERE vitri = 'GK';SELECT * FROM mancity WHERE vitri = 'DF';SELECT * FROM mancity WHERE vitri = 'MF';SELECT * FROM mancity WHERE vitri = 'FW';SELECT * FROM clb_anh.mancity";
  con_italia.query(sql,[1,5], function(err, results) {
    if (err) throw err;
    res.render('CLB/Anh/Mancity', {results});
  });
});

module.exports = router;
