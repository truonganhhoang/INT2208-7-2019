const LocalStrategy = require('passport-local').Strategy;//local-passport
const mongoose = require('mongoose');//check email database
const bcrypt = require('bcrypt');//hash password

//load model user
const User = require('../models/User');
// xác thực bằng email

module.exports = (passport) => {
    passport.use(new LocalStrategy( // đặt lại trường cần xác nhận là email
        {usernameField : 'email'}   ,(email , password , done) => {
        User.findOne({email : email}) //email điền ở form so với email ở database
        .then((user,err) => {
            if(err) return done(err);

            if(!user){ // nếu không phải trả về cho done là false
                return done(null , false , {message : 'Incorrect user.'});
            }

            bcrypt.compare(password , user.password , (err , res) => {
                if(err) throw err;
                if(res) // boolean variable
                {
                    //pass 
                    return done(null,user);
                }
                else
                {
                    //not valid password
                    return done(null,false , {message : 'Incorrect password.'})
                }
            }) // so sánh 2 pass
        })
        .catch(err => console.log(err));
        })
    );
    // format dữ liệu để lưu vào session
    passport.serializeUser((user, done) => {
        done(null, user.id);
    }); 
    
    //deformat dữ liệu lấy ra khi truy cập vào các router khác
    passport.deserializeUser((id, done) =>{
        User.findById(id, (err, user) => {
          done(err, user);
        });
    });
};