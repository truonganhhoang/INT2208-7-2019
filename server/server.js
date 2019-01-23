const express = require('express');
const bodyParser = require('body-parser');
const http = require('http');

const app = express();
const api = require('./api/api.js');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use('/api',api);

app.set('port',3000);

app.get('/test',(req,res)=> {
    res.json({message: "test successful"});
});

const server = http.createServer(app);

server.listen(3000,()=> console.log('API running on localhost:3000'));