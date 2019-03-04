require('dotenv').config();
const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');
const jwt = require('jsonwebtoken');
const tryConnect = require('../database/connect-mongo');
const multer = require('multer');
const tokenCheck = require('./token-check');
const userSchema = require('./../model/user.model');

const User = mongoose.model('User',userSchema);

var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, './src/assets/data/avatar/');
    },
    filename: function (req, file, cb) {
      cb(null, req.username);
    }
});

var avatarHandlerMiddleware = multer({storage: storage});

router.post('/userdetail',tokenCheck,(req,res)=>{
    User.findOne({username: req.body.username},(err,doc)=>{
        if (err) {
            res.json({
                state:false,
                user: false
            });
        } else {
            if (!doc) {
                res.json({
                    state:true,
                    user:false
                });
            } else {
                res.json({
                    state: true,
                    user: {
                        username: doc.username,
                        gender: doc.gender,
                        name: doc.name,
                        friends: doc.friends,
                        joinDay: doc.joinDay,
                        avatarUrl: doc.avatar.url,
                        birthday: doc.birthday,
                        threads: doc.threads
                    }
                });
            }
        }
    });
});


router.get('/user',(req,res)=> {
    if (!req.query.username) {
        res.json({
            state:false,
            user: false
        });
    } else {
        let username = req.query.username;
        User.findOne({username: username},(err,doc)=>{
            if (err) {
                res.json({
                    state:false,
                    user:false
                });
            } else {
                if (!doc) {
                    res.json({
                        state:true,
                        user:false
                    });
                } else {
                    res.json({
                        state:true,
                        user: {
                            username: doc.username,
                            gender: doc.gender,
                            name: doc.name,
                            avatarUrl: doc.avatarUrl,
                        }
                    });
                }
            }            
        });
    }
});





router.post('/avatarupload',tokenCheck,avatarHandlerMiddleware.single('avatar'),(req,res)=>{
    User.findOneAndUpdate({username:req.username},{avatarUrl: 'assets/data/avatar/' + req.username}, (err,doc)=>{
        if (err) res.json({
            state:false
        });
        else res.json({
            state:true
        });
    });
})




module.exports = router;