const User = require('./user.model');
const express = require('express');
const router = express.Router();
const MongoClient = require('mongodb').MongoClient;

require('dotenv').config();

const url = process.env.urlMongodb;
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

module.exports = router;