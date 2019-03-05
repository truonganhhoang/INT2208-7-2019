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
    avatarUrl: String,
    joinDay: {
        type: Date,
        default: Date.now
    }, 
    threads: {
        type: [String],
        default: []
    },
    friends: {
        type: [String],
        default: []
    }
});


module.exports = userSchema;