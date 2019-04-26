var express = require('express');
var mysql = require('mysql');
var app = express();
var http =require('http').Server(app);
var bodyParser = require('body-parser');
var jsonParser = bodyParser.json();

const trangChu = require('./routes/trang_chu')
const giaiDau = require('./routes/giai_dau');
const clbAnh = require('./routes/clb_anh');
const clbDuc = require('./routes/clb_duc');
const clbItalia = require('./routes/clb_italia');
const clbTBN = require('./routes/clb_tbn');
const clbPhap = require('./routes/clb_phap');
const tinTuc = require('./routes/tin_tuc')

var urlencodedParser =  bodyParser.urlencoded({extended :false})
app.set('view engine','ejs');
app.set('views', './views');
app.use(express.static(__dirname + '/public'));
app.use(trangChu);
app.use(giaiDau);
app.use(clbAnh);
app.use(clbDuc);
app.use(clbTBN);
app.use(clbPhap);
app.use(clbItalia);
app.use(tinTuc);



http.listen(process.env.PORT || 8888, function(){
  console.log('listening on *:8888');
});
