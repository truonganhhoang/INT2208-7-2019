const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var commentSchema = new Schema({
    sender: {
        type: String,
        default: ''
    },
    
});



module.exports = commentSchema;