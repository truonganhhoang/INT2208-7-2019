require('dotenv').config();
const express = require('express');
const router = express.Router();
const passport = require('passport');
const mongoose = require('mongoose');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');
const tryConnect = require('./../auth/connect-mongo');
const multer = require('multer');
const tokenCheck = require('./token-check');

var fileHandlerMiddleware = multer({dest:'./data/avatar/'});

router.post('/imageUpload',fileHandlerMiddleware.single('avatar'),(req,res)=>{
    console.log(req.file);
})




module.exports = router;