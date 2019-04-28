const mongoose = require('mongoose');
const Scheme = mongoose.Schema;

const userSchema = new Scheme({

    _id: mongoose.Schema.Types.ObjectId,
    name: {
        fullName: String,
        userName: {
            type: String,
            
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
    tweets:Array,
    message:Array
});


module.exports = mongoose.model('UserStructure',userSchema);