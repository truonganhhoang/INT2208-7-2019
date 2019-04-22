var express = require('express');
var path = require('path');
var app = express();
var bodyParser = require('body-parser');
var server = require("http").Server(app);
var jsonParser = bodyParser.json();
var mysql = require('mysql');
var session      = require('express-session');
var router = express.Router();
var q = require('q');
var multer = require('multer'); 


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}))

app.use(express.static(path.join(__dirname, '/public')));
app.set('view engine', 'ejs');
app.set('trust proxy', 1) // trust first proxy

app.use(session({
  secret: 'keyboard cat',
  resave: false,
  saveUninitialized: true,
  cookie: { secure: true }
}));

app.listen(3000,function(){
    console.log('Node server running')
});


var con = mysql.createConnection({
	multipleStatements: true,
	host: "localhost",
	user: "root",
	password: "",
	database: "dulieu"
});
var signinUser;
var timkiem;
app.get('/', function(req, res) {
	var sql = "SELECT * FROM debai LIMIT 8";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/index', {results});
	});
});
app.get('/dia', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'dia'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Dialy', {results});
	});
});
app.get('/eng', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'anh'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/English', {results});
	});
});
app.get('/phap', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'phap'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/French', {results});
	});
});
app.get('/gdcd', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'gdcd'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Giaoduccongdan', {results});
	});
});
app.get('/hoa', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'hoa'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Hoahoc', {results});
	});
});
app.get('/nhat', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'nhat'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Japanese', {results});
	});
});
app.get('/su', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'su'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Lichsu', {results});
	});
});
app.get('/van', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'van'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Nguvan', {results});
	});
});
app.get('/sinh', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'sinh'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Sinhhoc', {results});
	});
});
app.get('/toan', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'toan'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Toanhoc', {results});
	});
});
app.get('/ly', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'ly'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhoc/Vatly', {results});
	});
});


app.get('/diadn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'dia'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Dialy', {results,signinUser});
	});
});
app.get('/engdn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'anh'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/English', {results,signinUser});
	});
});
app.get('/phapdn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'phap'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/French', {results,signinUser});
	});
});
app.get('/gdcddn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'gdcd'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Giaoduccongdan', {results,signinUser});
	});
});
app.get('/hoadn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'hoa'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Hoahoc', {results,signinUser});
	});
});
app.get('/nhatdn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'nhat'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Japanese', {results,signinUser});
	});
});
app.get('/sudn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'su'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Lichsu', {results,signinUser});
	});
});
app.get('/vandn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'van'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Nguvan', {results,signinUser});
	});
});
app.get('/sinhdn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'sinh'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Sinhhoc', {results,signinUser});
	});
});
app.get('/toandn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'toan'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Toanhoc', {results,signinUser});
	});
});
app.get('/lydn', function(req, res) {
	var sql = "SELECT * FROM debai WHERE mon = 'ly'";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/monhocdadangnhap/Vatly', {results,signinUser});
	});
});
app.get('/giaodiendadangnhap', function(req, res) {
	var sql = "SELECT * FROM debai LIMIT 8";
	con.query(sql, function(err, results) {
    if (err) throw err;
    res.render('pages/giaodiendadangnhap', {results, signinUser});
	});
});
	
app.get('/signup', function(req, res) {
	res.render('pages/signup', {data: {}});
});
app.get('/signin', function(req, res) {
	res.render('pages/signin', {data: {}});
});

app.get('/giaodiendethi/:id', function(req, res) {
	var id = req.params.id;
	if (id){
		var sql = "SELECT * FROM debai WHERE id = ?;SELECT * FROM comment WHERE id = ? ";
		con.query(sql,[id,id], function(err, results) {
		if (err) throw err;
			res.render('pages/giaodiendethi',{results});
		});
	}
});
app.get('/giaodiendethidadangnhap/:id', function(req, res) {
	var id = req.params.id;
	var data;
	if (id){
		var sql = "SELECT * FROM debai WHERE id = ?;SELECT * FROM comment WHERE id = ? ";
		con.query(sql,[id,id], function(err, results){
			if (err) throw err;
			res.render('pages/giaodiendethidadangnhap', {data,results,signinUser});
		});
	}
});
app.post('/', function(req, res) {
	timkiem = req.body.search;
	if (timkiem.trim() !=0) {
	var sql = "SELECT * FROM debai WHERE LOWER(name) LIKE '%"+ timkiem.toLowerCase() +"%'";
	con.query(sql, function(err, results) {
    if (err) throw err;
	res.render('pages/search',{timkiem,results});
	});
	}
});

app.post('/giaodiendethi', function(req, res) {
	timkiem = req.body.search;
	if (timkiem.trim() !=0) {
	var sql = "SELECT * FROM debai WHERE LOWER(name) LIKE '%"+ timkiem.toLowerCase() +"%'";
	con.query(sql, function(err, results) {
    if (err) throw err;
	res.render('pages/search',{timkiem,results});
	});
	}
});

app.post('/giaodiendadangnhap', function(req, res) {
	timkiem = req.body.search;
	if (timkiem.trim() !=0) {
	var sql = "SELECT * FROM debai WHERE LOWER(name) LIKE '%"+ timkiem.toLowerCase() +"%'";
	con.query(sql, function(err, results) {
    if (err) throw err;
	res.render('pages/searchdn',{timkiem,results,signinUser});
	});
	}
});

app.post('/giaodiendethidadangnhap/:id', function(req, res) {
	var ids = req.params.id;
	var body = req.body;
	
	/*timkiem = body.search;
	if (timkiem.trim() !=0) {
		var sql = "SELECT * FROM debai WHERE LOWER(name) LIKE '%"+ timkiem.toLowerCase() +"%'";
		con.query(sql, function(err, results) {
		if (err) throw err;
		res.render('pages/searchdn',{timkiem,results,signinUser});
		});
	}*/
	if (body.texts.trim()== 0) {
		var sql = "SELECT * FROM debai WHERE id = ?;SELECT * FROM comment WHERE id = ? ";
		con.query(sql,[ids,ids], function(err, results){
			if (err) throw err;
			res.render('pages/giaodiendethidadangnhap', {data:{error:"Lỗi bình luận"},results,signinUser});
		});
	}
	else if (body.texts.trim() > 50) {
		var sql = "SELECT * FROM debai WHERE id = ?;SELECT * FROM comment WHERE id = ? ";
		con.query(sql,[ids,ids], function(err, results){
			if (err) throw err;
			res.render('pages/giaodiendethidadangnhap', {data:{error:"Lỗi bình luận"},results,signinUser});
		});
	}
	else {
	var cm = {
		id : ids,
		username : signinUser.username,
		firstname : signinUser.firstname,
		lastname : signinUser.lastname,
		comment : body.texts
	};

	if (cm) {
		var defer = q.defer();
		var query = con.query("INSERT INTO comment SET ?", cm, function(err,results) {
			if (err) {
				defer.reject(err);
			}
			else {
				defer.resolve(results);
			}
		});
		var check = defer.promise;
	}
	else {
		var check = false;
	}
	var data;
	
	if (!check) {
		var sql = "SELECT * FROM debai WHERE id = ?;SELECT * FROM comment WHERE id = ? ";
		con.query(sql,[ids,ids], function(err, results){
			if (err) throw err;
			res.render('pages/giaodiendethidadangnhap', {data:{error:"Lỗi bình luận"},results,signinUser});
		});
	}
	else {
		var sql = "SELECT * FROM debai WHERE id = ?;SELECT * FROM comment WHERE id = ? ";
		con.query(sql,[ids,ids], function(err, results){
			if (err) throw err;
			res.render('pages/giaodiendethidadangnhap', {data,results,signinUser});
		});
	}
	}
	
});

app.post('/search', function(req, res) {
	timkiem = req.body.search;
	if (timkiem.trim() !=0) {
	var sql = "SELECT * FROM debai WHERE LOWER(name) LIKE '%"+ timkiem.toLowerCase() +"%'";
	con.query(sql, function(err, results) {
    if (err) throw err;
	res.render('pages/search',{timkiem,results});
	});
	}
});

app.post('/signin', function(req,res) {
	var signin = req.body;
	if (signin.username.trim().length == 0) {
		res.render('pages/signin', {data: {error:  "Bạn chưa nhập username"}});
	}
	else if (signin.passwords.trim().length == 0) {
		res.render('pages/signin', {data: {error:  "Bạn chưa nhập password"}});
	}
	else {
		if (signin.username) {
		var defer = q.defer();
		var query = con.query("SELECT * FROM user WHERE ?", {username: signin.username}, function(err,results) {
			if (err) {
				defer.reject(err);
			}
			else {
				defer.resolve(results);
			}
		});
		var dt = defer.promise;
	}
		else {
			var dt = false;
		}
	if (!dt) {
		res.render('pages/signin', {data: {error:  "Tài khoản không tồn tại"}});
	}
	else {
		dt.then(function(users){
			var user = users[0];
			if (user.passwords == signin.passwords) {
				var sql = "SELECT * FROM debai LIMIT 8";
				con.query(sql, function(err, results) {
				if (err) throw err;
				signinUser = user;
				res.render('pages/giaodiendadangnhap', {results, signinUser});
				
	});
			}
			else {
				res.render('pages/signin', {data: {error:  "Tài khoản hoặc mật khẩu không đúng"}});
			}
		});
	}
	}
});
	
app.post('/signup', function(req,res) {
	var signup = req.body;
	if (signup.username.trim().length == 0) {
		res.render('pages/signup', {data: {error:  "Bạn chưa nhập username"}});
	}
	else if (signup.lastname.trim().length == 0 || signup.firstname.trim().length == 0) {
		res.render('pages/signup', {data: {error:  "Bạn chưa nhập tên"}});
	}
	else if (signup.passwords.trim().length == 0 || signup.repasswords.trim().length == 0) {
		res.render('pages/signup', {data: {error:  "Bạn chưa nhập mật khẩu"}});
	}
	else if (signup.passwords != signup.repasswords) {
		res.render('pages/signup', {data: {error:  "Mật khẩu không đúng"}});
	}
	else {
		users = {
		username: signup.username,
		firstname: signup.firstname,
		lastname: signup.lastname,
		passwords: signup.passwords
	};
	
	if (users) {
		var defer = q.defer();
		var query = con.query("INSERT INTO user SET ?", users, function(err,results) {
			if (err) {
				defer.reject(err);
			}
			else {
				defer.resolve(results);
			}
		});
		var check = defer.promise;
	}
	else {
		var check = false;
	}
	if (!check) {
		res.render('pages/signup', {data: {error:  "Không thể tạo tài khoản"}});
	}
	else {
		res.render('pages/signin', {data: {}});
	}
	}
});





	

										
		