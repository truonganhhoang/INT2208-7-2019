const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const threadSchema = require('./thread.model');

var userSchema = new Schema({
    username:{
        type:String,
        required:true,
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
    avatar: { 
        url: {type:String,
            default:''},
        imgType: {type:String,
            default:''}
    },
    joinDay: {
        type: Date,
        default: Date.now
    }, 
    threads: {
        type: [threadSchema],
        default: []
    },
    friends: {
        type: [String]
    }
});


module.exports = userSchema;