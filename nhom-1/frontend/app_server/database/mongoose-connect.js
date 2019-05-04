require('dotenv').config();
const mongoose = require('mongoose');


const url = process.env.URL_MONGODB;

mongoose.set('useCreateIndex', true);

mongoose.connect(url,{useNewUrlParser:true},(err)=>{
    if (err) {
        console.log(err);
    }
});

module.exports = mongoose;