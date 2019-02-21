
require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const http = require('http');
const app = express();
const auth = require('./auth/auth.js');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use('/auth',auth);


const port = process.env.PORT || 3000;

app.set('port',port);

app.get('/test',(req,res)=> {
    res.json({message: "test successful"});
});

const server = http.createServer(app);

server.listen(port,()=> console.log(`API running on localhost:${port}`));