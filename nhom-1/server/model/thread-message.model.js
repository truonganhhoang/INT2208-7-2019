const mongoose = require('mongoose');
const messageSchema = require('./message.model');
const Schema = mongoose.Schema;

var threadMessageSchema = new Schema({
    messages: {
        type: [messageSchema]
    },
    author: {
        type: [String]
    }, 
    previous: {
        type: String,
        default: ''
    }
});



module.exports = threadMessageSchema;