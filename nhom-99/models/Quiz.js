const mongoose = require('mongoose');
const quizSchema = new mongoose.Schema({
    quiz : {
        type : Object,
        required : true // trường này cho biết khi thêm vào document có cần xác thực lại không, bắt buộc phải cung cấp vào document hay không
    }
},{collection : 'quizs'});
const quizModel = mongoose.model('quizModel',quizSchema)
module.exports = quizModel;

