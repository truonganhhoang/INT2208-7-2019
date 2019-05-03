const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var threadSchema = new Schema({
    content: {
        type: String,
        default: ''
    },
    subcribers: {
        type: [String],
        default: []
    },
    sendDate: {
        type: Date,
        default: Date.now
    },
    author: {
        type: String,
        default: ''
    }
});



module.exports = threadSchema;