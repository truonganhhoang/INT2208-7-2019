const mongoose = require('mongoose');
const userSchema = new mongoose.Schema({
    name : {
        type : String,//type of field
        required : true // trường này cho biết khi thêm vào document có cần xác thực lại không, bắt buộc phải cung cấp vào document hay không
    },
    password : {
        type : String
    },
    email : {
        type : String,
        required : true 
    },
    image_profile : {
        type : String ,
        required : true
    },
    google_id : {
        type : String
    },
    facebook_id : {
        type : String
    },
    date : {
        type : Date,
        default: Date.now()
    }
    
});
const userModel = mongoose.model('UserModel',userSchema)
module.exports = userModel;

