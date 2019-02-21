/**
 * File này dành cho việc authentication, tạo user, đăng nhập
 */

require('dotenv').config();
const express = require('express');
const router = express.Router();
const MongoClient = require('mongodb').MongoClient;
const passport = require('passport');
const FacebookStrategy = require('passport-facebook');
const mongoose = require('mongoose');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');
const tryConnect = require('./connect-mongo');


const url = process.env.URL_MONGODB;
const secret = process.env.TOKEN_SECRET;

mongoose.connect(process.env.URL_MONGODB,{useNewUrlParser:true});


const Schema = mongoose.Schema;

const userSchema = new Schema({
    username:{
        type:String,
        required:true,
        unique:true
    },
    password:{
        type:String,
        required:true
    },
    name: {
        type: String,
        required:true
    },
    birthday: Date,
    gender: Boolean,
    imageUrl: { 
        type:String,
        default:''
    },
    joinDay: {
        type: Date,
        default: Date.now
    }
});

const User = mongoose.model('User',userSchema);

router.post('/test',(req,res)=>{
    console.log(User);
})


/**
 * check username có valid không.
 * trả về 1 object (json) có 2 biến: state và valid
 * state false -> connect với server lỗi, 
 * valid: true nếu tên user này dùng được, false nếu đã tồn tại
 */     
router.post('/checkvaliduser',(req,res)=>{
    if (!tryConnect(mongoose)) {
        res.json({
            state:false,
            valid:false
        });
        return;
    }     
    User.findOne({username:req.body.username},(err,doc)=>{
        if (!err) {
            res.json({
                state:false,
                valid:true
            });
        } else {
            if (!doc) {
                res.json({
                    state:true,
                    valid:true
                });
            } else {
                res.json({
                    state:true,
                    valid:false
                });
            }
        }
    });
});


/**
 * tạo user mới,
 * trả về object: state true nếu tạo user thành công, false nếu lỗi
 * một object user lồng trong object trả về cung cấp 3 field: username,name,gender
 */
router.post('/createuser',(req,res)=>{
    if (!tryConnect(mongoose)) {
        res.json({
            state:false,
            valid:false
        });
        return;
    }   
    const user = new User();
    user.username = req.body.username;
    user.password = bcrypt.hashSync(req.body.password,Number(process.env.SALT_ROUND));
    user.birthday = new Date(req.body.birthday);
    user.gender = req.body.gender;
    user.name = req.body.name;
    
    user.save((err,data)=> {
        if (!err) {
            res.json({
                state:true,
                user: {
                    username: data.username,
                    name: data.name,
                    gender: data.gender
                }
            });
        } else {
            res.json({
                state:false,
                user: false
            });
        }
    });
});


/**
 * gửi login đến cho API này, là một object với 2 biến
 * là username và password, password này lưu ý là chưa hash chưa làm gì cả
 */
router.post('/login',(req,res)=>{
    if (!tryConnect(mongoose)) {
        res.json({
            state:false,
            valid:false
        });
        return;
    }
    console.log(mongo);
    User.findOne({username:req.body.username},(err,docs)=>{
        console.log(err);
        if (err) {
            //nếu kết nối với server bị lỗi., trả về state false
            res.json({
                state:false,
                token:false
            });
        } else {
            if (docs) {
                //nếu tìm được user này
                if (bcrypt.compareSync(req.body.password,docs.password)) {
                    //đúng password, trả về token
                    res.json({
                        state:true,
                        token: jwt.sign({
                            username: docs.username
                        },
                        secret, {expiresIn:'7 days'}
                        )
                    });
                } else {
                    //sai password, trả về token là false
                    res.json({
                        state:true,
                        token: false
                    });
                }
            } else {
                //không tìm thấy user, trả về token false
                res.json({
                    state:true,
                    token: false
                });
            }
        }
    });
});













//test

/**
 * Tạo thử user admin
 */
// router.get('/admin',(req,res)=>{
//     const user = new User();
//     user.username = 'admin';
//     user.password = bcrypt.hashSync('123456',Number(process.env.SALT_ROUND));
//     user.birthday = new Date(1999,8,16);
//     user.gender = true;
//     user.name = 'Nam Phan';
//     user.save((err,data)=>{
//         if (!err) {
//             res.send(data);
//         } else {
//             res.send(err);
//         }
//     });
// });

passport.use(new FacebookStrategy({
    clientID: process.env.FACEBOOK_CLIENTID,
    clientSecret: process.env.FACEBOOK_CLIENTSECRET,
    callbackURL: 'http://localhost:3000/auth/facebook/callback',
    profileFields: ['id', 'displayName', 'photos', 'email'],
    enableProof:true
    },
    function(accessToken, refreshToken, profile,cb) {
        console.log(profile);
    }
));

router.get('/facebook', passport.authenticate('facebook'));


router.get('/facebook/callback',
    passport.authenticate('facebook',{successRedirect:'http://localhost:4200',failureRedirect:'http://localhost:4200'}),
    (req,res)=>{
        res.json({"hello":"success"});
    }
);

module.exports = router;