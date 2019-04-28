const mongoose = require('mongoose');
const Schema = mongoose.Schema;

/* User data  */


const userSchema = new Scheme({

    _id: mongoose.Schema.Types.ObjectId,
    name: {
        fullName: String,
        userName: {
            type: String,
            required: true
        }
    },
    studentID:{
        type: String,
        required: true
    },
    email:String,
    password:{
        type: String,
        required: true
    },
    created: {
        type: Date,
        default: Date.now
    },
    media:{
        avatar:{
            type:String,
            default:'https://i.imgur.com/DWk14y3.jpg'
        },
        cover:String,
        image:Array
    },
    message:Array,
    tweet:Array
});



/* tweet data */


const tweetSchema = new Schema({
    _id: mongoose.Schema.Types.ObjectId,
    author: {
        type:mongoose.Schema.Types.ObjectId,
        ref: 'UserStructure'
    },
    content:String,
    retweet:Number,
    comment:Array,
});

//


