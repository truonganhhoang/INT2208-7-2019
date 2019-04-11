const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var messageSchema = new Schema({
    content: {
        type: String,
        default: ''
    }, 
    sendDate: {
        type: Date,
        default: Date.now
    },
    sender: {
        type: String
    },
    receiver: {
        type: String
    },
    receiverRead:{
        type: Boolean,
        default: false
    }
});



module.exports = messageSchema;