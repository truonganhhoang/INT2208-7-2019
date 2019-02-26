require('dotenv').config();
const express = require('express');
const bodyParser = require('body-parser');
const http = require('http');
const app = express();
const auth = require('./auth/auth');
const api = require('./api/api');
const cors = require('cors');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use(cors());
app.use('/auth',auth);
app.use('/api',api);

const port = process.env.PORT || 3000;

app.set('port',port);

app.get('/test',(req,res)=> {
    res.json({message: "test successful"});
});

const server = http.createServer(app);

require('./messenger/socket')(server);



server.listen(port,()=> console.log(`API running on localhost:${port}`));
