
require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const http = require('http');
const passport = require('passport');
const FacebookStrategy = require('passport-facebook');
const app = express();
const api = require('./api/api.js');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use('/api',api);

passport.use(new FacebookStrategy({
    clientID: 283390412324668,
    clientSecret: 'hello',
    callbackURL: "http://localhost:3000/api/auth/callback",
    function(accessToken, refreshToken, profile,cb) {
        console.log(profile);
    }
}
));

const port = process.env.port || 3000;

app.set('port',port);

app.get('/test',(req,res)=> {
    res.json({message: "test successful"});
});

const server = http.createServer(app);

server.listen(port,()=> console.log(`API running on localhost:${port}`));