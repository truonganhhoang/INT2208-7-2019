require('dotenv').config();
const mongoose = require('mongoose');


const url = process.env.URL_MONGODB;

mongoose.connect(url,{useNewUrlParser:true});

module.exports = mongoose;