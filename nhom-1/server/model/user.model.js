const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const friendSchema = require('./friend.model');

var userSchema = new Schema({
    username:{
        type:String,
        required:true
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
    avatarUrl: {
        type:String,
        default:'assets/data/default/useravatar_default.png'
    },
    joinDay: {
        type: Date,
        default: Date.now
    }, 
    threads: {
        type: [String],
        default: []
    },
    friends: {
        type: [friendSchema],
        default: []
    }
});

userSchema.index({username:1});


module.exports = userSchema;