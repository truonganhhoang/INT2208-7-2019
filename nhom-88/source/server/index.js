const express = require('express');
const cors = require('cors');
const mongoose = require("mongoose");



const TweetStructure = require('./tweetData');
const UserStructure = require('./userData');


const API_PORT = 5000;  


const app = express();

// setting application
app.use(cors());
app.use(express.json());




const opt = {  
    useNewUrlParser: true
}  
const uri = 'mongodb://twituet:AloAlo123@cluster0-shard-00-00-ziifr.mongodb.net:27017,cluster0-shard-00-01-ziifr.mongodb.net:27017,cluster0-shard-00-02-ziifr.mongodb.net:27017/Twituet?ssl=true&replicaSet=Cluster0-shard-0&authSource=admin&retryWrites=true'  

mongoose.connect(uri, opt).then(function () {
    console.log('Mongodb connect success!')
}, function (err) {
    console.log('Mongodb connect error: ', err)
})

function isValid(data){
    return true;
}


app.post('/submit',(req,res)=>{
    if(isValid(req.body)){
        let tweet = new TweetStructure();
        tweet.content = req.body.content.toString();
        tweet._id = new mongoose.Types.ObjectId(); 
        tweet.save(err =>{
            if(err){
                return res.json({
                    success: false,
                    error: err
                })
            }
            console.log('in save funtion');
            return res.json({ 
                success: true
            });
        })
        console.log('server: ' + tweet);
    }
});

/// han che so luong response

app.get('/tweet',(req,res)=>{
    TweetStructure.find((err,data)=>{
        if(err){
            return res.json({success: false, error: err});
        }
        return res.json({success: true, data:data});
    });
})

app.post('/login',(req,res)=>{
    return res.json({
        success:true
    });
})


app.get('/all',(req,res)=>{
    TweetStructure.find((err, data) => {
        if (err) return res.json({ success: false, error: err });
        return res.json({ success: true, data: data });
      });
});




app.post('/register',(req,res)=>{
    const data = req.body;

    const newUser = new UserStructure();

    newUser._id = new mongoose.Types.ObjectId();
    newUser.studentID = data.studentId;
    newUser.password = data.password;


    newUser.save((err)=>{
        if(err){
            console.log(err);
        }
        console.log('new user saved');
        return res.json({
            success: true
        });
    });

});



app.get('/', (req, res) => {
    res.json({
        message: 'response 5000 port deo can db'
    });
});


// application listen

app.listen(API_PORT, () => {
    console.log("listent http://localhost:5000");
})

