const User = require('./user.model');
const express = require('express');
const router = express.Router();
const MongoClient = require('mongodb').MongoClient;
const passport = require('passport');
const FacebookStrategy = require('passport-facebook');

require('dotenv').config();

const url = process.env.URL_MONGODB;
const dbName = 'admin';

router.get('/test',(req,res)=> {
    res.json({message:"api test successfully"});
});

router.get('/test2',(req,res)=> {
    var user = new User('sockyone','hello',18);
    res.json(user);
})

router.get('/connect',(req,res)=> {
    MongoClient.connect(url,{useNewUrlParser:true},(err,client)=>{
        if (!err) {
            const db=client.db(dbName).collection('test');
            db.find({}).toArray((err,docs)=>{
                if (!err) {
                    res.json({"message": docs,"length": docs.length});
                }
            });
            client.close();
        } else {
            res.json({"message":"failed"});
        }
    })
});

passport.use(new FacebookStrategy({
    clientID: process.env.FACEBOOK_CLIENTID,
    clientSecret: process.env.FACEBOOK_CLIENTSECRET,
    callbackURL: 'http://localhost:3000/api/auth/facebook/callback',
    profileFields: ['id', 'displayName', 'photos', 'email'],
    enableProof:true
    },
    function(accessToken, refreshToken, profile,cb) {
        console.log(profile);
    }
));

router.get('/auth/facebook', passport.authenticate('facebook'));


router.get('/auth/facebook/callback',
    passport.authenticate('facebook',{successRedirect:'http://localhost:4200',failureRedirect:'http://localhost:4200'}),
    (req,res)=>{
        res.json({"hello":"success"});
    }
);

module.exports = router;