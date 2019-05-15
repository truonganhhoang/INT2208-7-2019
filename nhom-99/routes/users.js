const express = require('express');
const router = express.Router();
const User = require('../models/User');
const bcrypt = require('bcrypt');
const assert = require('assert');
const passport = require('passport');
const multer = require('multer');
const {ensureAuthenticated} = require('../config/ensureauth');
const saltRounds = 10;

//nơi lưu trữ file upload
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './user-images');
  },
  filename: function (req, file, cb) {
    cb(null,Date.now() + '-' +  file.originalname  );
  }
})


function fileFilter (req, file, cb) {

  if(!file.originalname.match(/\.(jpg|png|gif|jpeg)$/)){
    cb(null, false);
  }
  
  else {
    cb(null, true);
  }
  // // To reject this file pass `false`, like so:
  // cb(null, false)

  // // To accept the file pass `true`, like so:
  // cb(null, true)

  // // You can always pass an error if something goes wrong:
  // cb(new Error('I don\'t have a clue!'))
}

let upload = multer({ storage: storage , fileFilter : fileFilter });


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
router.get('/register', function(req, res, next) {
  res.render('register', { title: 'Truy cập bằng tài khoản cá nhân của bạn' });
});
router.get('/sign-up', function(req, res, next) {
  res.render('sign-up', { title: 'Đăng kí tài khoản truy cập vào website' });
});

//LOCAL STRATEGY
//sign-up handle
router.post('/sign-up',upload.any(),(req,res,next) => {
const {name , email , password , re_password} = req.body; 
const image_profile = "/" + req.files[0].path;

 
 let errors = [];

//check not blank
  if(!name || !email || !password || !re_password || !image_profile){
    errors.push({message : "vui lòng hãy nhập hết các trường vào ô trống nhé"});
  }
  //check re password 
  if(password !== re_password){
    errors.push({message : "mật khẩu nhắc lại cần giống mật khẩu ban đầu"});
  }
  //check length password < 8
  if(password.length < 8){
    errors.push({message : "mật khẩu cần nhiều hơn 8 kí tự"});
  } 
  //cái này để sau
  //"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$" lớn hơn 8 kí tự , ít nhất 1 kí tự số, 1 chữ cai , 1 kí tự đặc biệt
  if(!/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(password))
  {
    errors.push({message : "tài khoản cần ít nhất 1 kí tự số, 1 chữ cái in hoa và 1 kí tự đặc biệt"});
  }

  if(errors.length > 0){
    //not pass 
    res.render('sign-up',{
      errors,
      password,
      email,
      name,
      re_password,
      images_profile : image_profile,
      title : "Đăng kí tài khoản truy cập vào website"
    }) ; 
  }
  else 
  {
    User.findOne({email : email})
    .then(user => {
      if(user){//if exists
        errors.push({message : "email đã được tạo , vui lòng nhập email khác thay thế"});
        res.render('sign-up',{
          errors,
          password,
          email,
          name,
          re_password,
          images_profile : image_profile,
          title : "Đăng kí tài khoản truy cập vào website"
        });        
      }
      else 
      {
        let newUser = new User({name,email,password ,image_profile : image_profile});
        //hash pass
        bcrypt.genSalt(saltRounds,(err,salt) =>{
            bcrypt.hash(newUser.password,salt,(err,hash)=> {
              assert.equal(null,err);
              //hash password
              newUser.password = hash;
              //save db
              newUser.save()
              .then((user) => {
                req.flash('success_mess','You are registered now!');
                res.redirect('/users/register');
              })
              .catch(err => console.log(err));
            })
        }) 
      }
    })
  }
});

//login handle
router.post('/register', (req, res, next) => {
  passport.authenticate('local', {
    successRedirect: '/',
    failureRedirect: '/users/register',
    failureFlash: true
  })(req, res, next);
});


// //call back custom
// router.post('/register' , (req, res, next) => {
//   passport.authenticate('local' , (err , user , info) => {
//     if(err) return next(err);
//     if(!user) {
//       return res.redirect('/users/register');
//     }
//     req.logIn(user , (err) => {
//       if(err) return next(err);
//       return res.redirect('/');
//     })
//   })(req , res , next);
// });

//logout handle

router.get('/logout',(req, res, next) => {
  req.logOut();
  res.redirect('/');
})

//GOOGLE API LOGIN

//login with google step one client request to google , after gooogle consent authentic it give back detail of user in step two
router.get('/google',passport.authenticate('google' ,{
  scope : ['profile','email']
}));



//check legit google accout , google will response to sever
router.get('/google/callback',passport.authenticate('google' , {failureRedirect: '/users/register'}), (req,res,next) => {
  res.redirect('/');
});


//FACEBOOK APP LOGIN
// login with facebook (api)
router.get('/facebook',passport.authenticate('facebook' , {
  authType: 'reauthenticate', //re-ask when decline permision access
  scope : ['email','user_friends'] // fields i want to receive from users
}));
// response of facebook
router.get('/facebook/callback', passport.authenticate('facebook', { 
  successRedirect: '/',
  failureRedirect: '/users/register' 
}));


router.get('/profile', ensureAuthenticated , (req , res ,next) => {
  let name = '',
  image = '',
  email = '' ,
  date = '';
  if(req.user)
  {
    image =  req.user.image_profile ;
    name = req.user.name;
    email = req.user.email;
    date = req.user.date
  }

  res.render('profile' , {name , image , email , date});
})

module.exports = router;
