const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const commentSchema = require('./comment.model');

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
    },
    lastInteract: {
        type: Date,
        default: Date.now
    },
    likes: {
        type: [String],
        default: []
    },
    comments: {
        type: [commentSchema],
        default: []
    },
    likesHistory: {
        type: [String],
        default: []
    }
});



module.exports = threadSchema;