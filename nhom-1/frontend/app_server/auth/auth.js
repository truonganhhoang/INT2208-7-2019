/**
 * File này dành cho việc authentication, tạo user, đăng nhập
 */

require('dotenv').config();
const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const userSchema = require('./../model/user.model');

//const passport = require('passport');
//const FacebookStrategy = require('passport-facebook');

const secret = process.env.TOKEN_SECRET;


const User = mongoose.model('User',userSchema);

/**
 * check username có valid không.
 * trả về 1 object (json) có 2 biến: state và valid
 * state false -> connect với server lỗi, 
 * valid: true nếu tên user này dùng được, false nếu đã tồn tại
 */     
router.post('/checkvaliduser',(req,res)=>{
    User.findOne({username:req.body.username},(err,doc)=>{
        if (err) {
            res.json({
                state:false,
                valid:false
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
    
    User.findOne({username:req.body.username},(err,docs)=>{
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
                            username: docs.username,
                            name: docs.name
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

// passport.use(new FacebookStrategy({
//     clientID: process.env.FACEBOOK_CLIENTID,
//     clientSecret: process.env.FACEBOOK_CLIENTSECRET,
//     callbackURL: 'http://localhost:3000/auth/facebook/callback',
//     profileFields: ['id', 'displayName', 'photos', 'email'],
//     enableProof:true
//     },
//     function(accessToken, refreshToken, profile,cb) {
//         console.log(profile);
//     }
// ));

// router.get('/facebook', passport.authenticate('facebook'));


// router.get('/facebook/callback',
//     passport.authenticate('facebook',{successRedirect:'http://localhost:4200',failureRedirect:'http://localhost:4200'}),
//     (req,res)=>{
//         res.json({"hello":"success"});
//     }
// );

module.exports = router;
