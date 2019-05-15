const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const session = require('express-session');
const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');
const authRouter= require('./routes/auth');
const mongoose = require('mongoose');
const passport = require('passport');

//dùng lưu trữ tin nhắn vào session , sau khi hiển thị cho user thì xóa ngay
const flash = require('connect-flash');
const app = express();
//config mlab
require('dotenv').config();


//config passport
require('./config/passport')(passport);
//config passport of google
require('./config/passport-google-setup')(passport);
//config passport of facebook
require('./config/passport-facebook-setup')(passport);


const url = 'mongodb://localhost:27017/accounts';
//connect my mongooose database
mongoose.connect(process.env.DATABASE, {useNewUrlParser: true})
  .then(() => console.log('done connected'))
  .catch(err => console.log(err));

// view engine setup load đến file giao diện
app.set('views', path.join(__dirname, 'views'));

//view engine
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());

//body-parser
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());

//session
// app.set('trust proxy', 1) // trust first proxy
app.use(session({
  secret: 'ducanhgiaosu99',
  resave: true,
  saveUninitialized: true,
  // chạy bằng giao thức https
  // cookie: { secure: true }
  cookie : {maxAge : 60 * 60 * 1000}
}));

//passport middleware
app.use(passport.initialize());
app.use(passport.session());


//connect flash - đặt trước routers
app.use(flash());

//global var truyền qua biến locals hiển thị trong view engine
app.use((req,res,next) => {
  res.locals.success_mess = req.flash('success_mess');//middleware
  res.locals.warning_mess = req.flash('warning_mess');
  res.locals.error = req.flash('error');//flash message of passport authentication < error >
  res.locals.user = req.user || null ; //thông tin người dùng được lưu trong user của session
  next();// chuyển qua hàm middleware nếu không sẽ bị delay k chạy
});


//routers 
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/auth', authRouter);
app.use('/courses', require('./routes/courses'));


//đường dẫn đến các file
app.use(express.static(path.join(__dirname, 'public')));
//tham số thứ nhất thể hiện trong đường dẫn ở các file html or css
//tham số thứ 2 dẫn đên các folder
app.use("/stylesheets",express.static(__dirname + "stylesheets"));
app.use("/user-images",express.static('user-images'));
app.use("/javascripts",express.static(__dirname + "javascripts"));
app.use("/images",express.static(__dirname + "images"));
app.use("/fonts",express.static(__dirname + "fonts"));
app.use("/vendor",express.static(__dirname + "vendor"));
app.use("/icons",express.static(__dirname + "icons"));



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
