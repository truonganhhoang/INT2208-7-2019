const mongoose = require('mongoose');
const Schema = mongoose.Schema;

var friendSchema = new Schema({
    username: {
        type: String,
        default: ''
    },
    relationType: {
        type: String,
        default: 'none'
    }
});



module.exports = friendSchema;