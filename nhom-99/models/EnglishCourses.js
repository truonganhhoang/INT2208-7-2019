const mongoose = require('mongoose');
const coursesSchema = new mongoose.Schema({
    title : {
        type : String,
        required : true
    },
    description : {
        type : String,
        required : true
    },
    levelcomplete : {
        type : Number,
        default : 0
    },
    images : {
        type : String,
        required : true
    }
},{collection : 'english_courses'});
const coursesModel = mongoose.model('CoursesModel' , coursesSchema );
module.exports = coursesModel;