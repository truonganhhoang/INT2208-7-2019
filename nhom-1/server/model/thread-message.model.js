const mongoose = require('mongoose');
const messageSchema = require('./message.model');
const Schema = mongoose.Schema;

var threadMessageSchema = new Schema({
    messages: {
        type: [messageSchema],
        default: []
    },
    previous: {
        type: String,
        default: ''
    }
});



module.exports = threadMessageSchema;