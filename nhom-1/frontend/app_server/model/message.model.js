const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var messageSchema = new Schema({
    typeOfMessage: {
        type: String,
        default: 'text'
    },
    imgUrl: {
        type: String,
        default: ''
    },
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
    }
});



module.exports = messageSchema;