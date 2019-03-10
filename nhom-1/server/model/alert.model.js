const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var alertSchema = new Schema({
    type: {
        type:String,
        default: ''
    },
    date: {
        type: Date,
        default: Date.now
    }
});



module.exports = alertSchema;