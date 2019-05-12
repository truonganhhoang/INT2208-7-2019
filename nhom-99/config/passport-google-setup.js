const GoogleStrategy = require('passport-google-oauth20').Strategy;
const mongoose = require('mongoose');

// user model
const User = require('../models/User');
require('dotenv').config();

module.exports = (passport) => {
      passport.use(new GoogleStrategy({
      //option google setup connect to api
      clientID : process.env.GOOGLE_CLIENT_ID,
      clientSecret : process.env.GOOGLE_CLIENT_SECRET,
      callbackURL : '/users/google/callback'
      },
   (accessToken, refreshToken, profile, done) => {
       //callbackfunction
       //profile of google response
      //  console.log(profile);
      // User.findOrCreate({ googleId: profile.id }, function (err, user) {
      //   return done(err, user);
      // });
      User.findOne({google_id : profile.id})
      .then((user,err) => {
         if(err) return done(err);
         
         if(user){
            return done(null,user);
         }
         else{
            new User({
               google_id :profile.id,
               name : profile.name.familyName + " " + profile.name.givenName,
               email : profile.emails[0].value,
               image_profile : profile.photos[0].value
            })
            .save()
            .then(user => done(null,user));
         }
      })
   }
   ));
//    // format dữ liệu để lưu vào session
//    passport.serializeUser((user, done) => {
//       done(null, user.id);
//   }); 
  
//   //deformat dữ liệu lấy ra khi truy cập vào các router khác
//   passport.deserializeUser((id, done) => {
//    User.findById(id).then((user) => {
//       done(null, user);
//    });
//   });
}



