const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var notifySchema = new Schema({
    type: {
        type:String,
        default: ''
    },
    payload: {
        type: Schema.Types.Mixed,
        default: {}
    },
    date: {
        type: Date,
        default: Date.now
    }
});



module.exports = notifySchema;