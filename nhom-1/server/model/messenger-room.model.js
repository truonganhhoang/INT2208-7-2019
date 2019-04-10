const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var messengerRoomSchema = new Schema({
    id: {
        type: String,
        default: ''
    },
    thread: {
        type: String,
        default: ''
    },
    lastMessage: {
        type: Date,
        default: Date.now
    }
});



module.exports = messengerRoomSchema;