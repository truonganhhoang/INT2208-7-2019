
module.exports = function (io) {
    require('dotenv').config();
    const express = require('express');
    const router = express.Router();
    const mongoose = require('mongoose');
    const multer = require('multer');
    const tokenCheck = require('./token-check');
    const userSchema = require('./../model/user.model');

    const User = mongoose.model('User', userSchema);

    var storageAvatar = multer.diskStorage({
        destination: function (req, file, cb) {
            cb(null, './src/assets/data/avatar/');
        },
        filename: function (req, file, cb) {
            cb(null, req.username);
        }
    });

    var storagePictureAvatar = multer.diskStorage({
        destination: function (req, file, cb) {
            cb(null, './src/assets/data/picture/');
        },
        filename: function (req, file, cb) {
            cb(null, req.username + '_' + String(Date.now()))
        }
    });

    var avatarHandlerMiddleware = multer({ storage: storageAvatar });

    var avatarSavePicHandlerMiddleware = multer({ storage: storagePictureAvatar });


    router.get('/addfriend', tokenCheck, (req, res) => {
        let friendId = req.query.username;
        let userId = req.body.username;


    });

    router.post('/modify', tokenCheck, (req, res) => {
        let newBirthday = req.body.birthday;
        let newGender = req.body.gender;
        let newName = req.body.name;

        User.findOneAndUpdate({ username: req.body.username }, { birthday: newBirthday, gender: newGender, name: newName }, (err, doc) => {
            if (err) {
                res.json({
                    state: false
                });
            } else {
                res.json({
                    state: true
                });
            }
        });
    });


    router.get('/checkfriend', tokenCheck, (req, res) => {
        let friendId = req.query.username;
        let userId = req.body.username;
        User.findOne({ username: friendId }, (err, doc) => {
            if (err) {
                res.json({
                    state: false,
                    isFriend: false
                });
            } else {
                if (!doc) {
                    res.json({
                        state: true,
                        isFriend: false
                    });
                } else {
                    if (doc.friends.includes(userId)) {
                        
                    } else {
                        res.json({
                            state: true,
                            isFriend: false
                        });
                    }
                }
            }
        });
    });

    router.get('/userdetail', tokenCheck, (req, res) => {
        User.findOne({ username: req.body.username }, (err, doc) => {
            if (err) {
                res.json({
                    state: false,
                    user: false
                });
            } else {
                if (!doc) {
                    res.json({
                        state: true,
                        user: false
                    });
                } else {
                    res.json({
                        state: true,
                        user: {
                            username: doc.username,
                            gender: doc.gender,
                            name: doc.name,
                            friends: doc.friends,
                            joinDay: doc.joinDay,
                            avatarUrl: doc.avatarUrl,
                            birthday: doc.birthday,
                            threads: doc.threads
                        }
                    });
                }
            }
        });
    });


    router.get('/user', (req, res) => {
        if (!req.query.username) {
            res.json({
                state: false,
                user: false
            });
        } else {
            let username = req.query.username;
            User.findOne({ username: username }, (err, doc) => {
                if (err) {
                    res.json({
                        state: false,
                        user: false
                    });
                } else {
                    if (!doc) {
                        res.json({
                            state: true,
                            user: false
                        });
                    } else {
                        res.json({
                            state: true,
                            user: {
                                username: doc.username,
                                gender: doc.gender,
                                name: doc.name,
                                avatarUrl: doc.avatarUrl,
                            }
                        });
                    }
                }
            });
        }
    });


    router.post('/avatarupload', tokenCheck, avatarHandlerMiddleware.single('avatar'), (req, res) => {
        User.findOneAndUpdate({ username: req.username }, { avatarUrl: 'assets/data/avatar/' + req.username }, (err, doc) => {
            if (err) res.json({
                state: false
            });
            else res.json({
                state: true
            });
        });
    });


    return router;
}




// module.exports = router;