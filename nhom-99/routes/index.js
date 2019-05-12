var express = require('express');
var router = express.Router();
var passport = require('passport');
/* GET home page. */

router.get('/', function(req, res, next) {
  let name = '',
  image = '';
  if(req.user)
  {
    image = req.user.image_profile;
    name = req.user.name;
  }
  res.render('index', { title: 'Express' , name : name , image : image});
});

//register


module.exports = router;
