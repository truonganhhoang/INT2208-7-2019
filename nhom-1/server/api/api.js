require('dotenv').config();
const express = require('express');
const router = express.Router();
const passport = require('passport');
const mongoose = require('mongoose');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const tryConnect = require('../database/connect-mongo');
const multer = require('multer');
const tokenCheck = require('./token-check');
const userSchema = require('./../model/user.model');

const User = mongoose.model('User',userSchema);

var avatarHandlerMiddleware = multer({dest:'./data/avatar/'});

router.get('/userinfo',tokenCheck,(req,res)=>{

});








router.post('/avatarupload',avatarHandlerMiddleware.single('avatar'),(req,res)=>{
    console.log(req.file);
})




module.exports = router;