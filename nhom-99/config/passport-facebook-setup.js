const FacebookStrategy = require('passport-facebook').Strategy;
// user model
const User = require('../models/User');
require('dotenv').config();

module.exports = (passport) => {
    passport.use(new FacebookStrategy({
        //option for facebook api
        clientID: process.env.FACEBOOK_APP_ID,
        clientSecret: process.env.FACEBOOK_APP_SECRET,
        callbackURL: "/users/facebook/callback",
        profileFields: ['id', 'displayName', 'photos', 'email',"birthday",'first_name','middle_name','last_name']
    }, 
    //callback function
    (accessToken, refreshToken, profile, done) => {
        // console.log(profile);

        User.findOne({facebook_id : profile.id})
        .then((user,err) => {
            if(err) return done(err);

            if(user) {
                return done(null,user);
            }
            else {
                new User({
                    facebook_id : profile.id,
                    name : profile.displayName,
                    email : profile.emails[0].value,
                    image_profile : profile.photos[0].value
                })
                .save()
                .then(user => done(null,user));
            }
        })
    }
    ))
}