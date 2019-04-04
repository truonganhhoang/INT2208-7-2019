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
    }
});



module.exports = messengerRoomSchema;