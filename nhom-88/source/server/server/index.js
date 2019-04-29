'use strict';
const express = require('express');
const bodyParser = require('body-parser');
const logger = require('morgan');
const mongoose = require('mongoose');
const passport = require('passport');
const cookieParser = require('cookie-parser');
module.exports = function() {
  let server = express(),
      create,
      start;
   create = function(config, db) {
        let database = 'mongodb://twituet:AloAlo123@cluster0-shard-00-00-ziifr.mongodb.net:27017,cluster0-shard-00-01-ziifr.mongodb.net:27017,cluster0-shard-00-02-ziifr.mongodb.net:27017/Twituet?ssl=true&replicaSet=Cluster0-shard-0&authSource=admin&retryWrites=true';

      let routes = require('./routes');
       // Server settings
       server.set('env', config.env);
       server.set('port', config.port);
       server.set('hostname', config.hostname);
       // Returns middleware that parses json
       server.use(bodyParser.json());
       server.use(bodyParser.urlencoded({ extended: false }));
       server.use(cookieParser());
       server.use(logger('dev'));
       server.use(passport.initialize());
       mongoose.connect(database,{useNewUrlParser: true});
       console.log('Connected database');
       require('../configs/passport')(passport);
       // Set up routes
       routes.init(server);
   };
   start = function() {
       let hostname = server.get('hostname'),
       port = server.get('port');
       server.listen(port, function () {
          console.log('Express server listening on - http://' + hostname + ':' + port);
        });
    };
    return {
       create: create,
       start: start
    };
};