const express = require('express');
const router = express.Router();
const Courses = require('../models/EnglishCourses');
const Quizs = require('../models/Quiz');
const {ensureAuthenticated} = require('../config/ensureauth');


router.get('/', ensureAuthenticated , (req, res, next) => {
  let image = '';
  if(req.user)
  {
    image = req.user.image_profile;
  }
    Courses.find({})
    .then((doc,err) => {
        if(err) throw err;
        res.render("courses" , {doc : doc , image : image});
    })
    .catch(err => {
        console.log(err);
    })
})


router.get('/grammar' , (req,res,next) => {
  res.render('grammar');
})


router.get('/getApi'  , (req,res,next) => {
    // Website you wish to allow to connect
    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:4000');
    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

  

  Courses.find({})
    .then((doc,err) => {
        if(err) throw err;
        res.send(doc);
    })
    .catch(err => {
        console.log(err);
    })

     
})


router.get('/getApiQuiz' , (req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', 'http://localhost:4000');
  // Request methods you wish to allow
  res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
  // Request headers you wish to allow
  res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');
  // Set to true if you need the website to include cookies in the requests sent
  // to the API (e.g. in case you use sessions)
  res.setHeader('Access-Control-Allow-Credentials', true);

  Quizs.find({})
    .then((doc,err) => {
        if(err) throw err;
        res.send(doc);
    })
    .catch(err => {
        console.log(err);
    })

})

module.exports = router;