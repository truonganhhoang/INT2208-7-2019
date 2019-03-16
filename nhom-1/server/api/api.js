
module.exports = function (io) {
    require('dotenv').config();
    const express = require('express');
    const router = express.Router();
    const mongoose = require('mongoose');
    const multer = require('multer');
    const tokenCheck = require('./token-check');
    const userSchema = require('./../model/user.model');
    const friendSchema = require('./../model/friend.model');
    const notifySchema = require('./../model/notify.model');
    const gen = require('./generate-room');

    const User = mongoose.model('User', userSchema);
    const Friend = mongoose.model('Friend', friendSchema);
    const Notify = mongoose.model('Notify', notifySchema);

    var storageAvatar = multer.diskStorage({
        destination: function (req, file, cb) {
            cb(null, './src/assets/data/avatar/');
        },
        filename: function (req, file, cb) {
            cb(null, req.username);
        }
    });

    var storagePicture = multer.diskStorage({
        destination: function (req, file, cb) {
            cb(null, './src/assets/data/picture/');
        },
        filename: function (req, file, cb) {
            cb(null, req.username + '_' + String(Date.now()))
        }
    });

    var saveAvatarHandlerMiddleware = multer({ storage: storageAvatar });

    var savePictureHandlerMiddleware = multer({ storage: storagePicture });

    
    router.get('/rejectfriend', tokenCheck, (req,res)=> {
        let friendId = req.query.username;
        let userId = req.body.username;

        User.findOne({username: userId},(err,doc)=>{
            if (err) {
                res.json({state: false});
                return;
            }
            let pointer = 0;
            let n = doc.friends.length;
            for (let i = 0; i < n; i++) {
                if (doc.friends[i].username == friendId) {
                    pointer = i;
                    break;
                }
            }
            doc.friends = doc.friends.splice(pointer,1);
            n = doc.notifies.length;
            let isFound = false;
            for (let i = 0; i < n; i++) {
                if (doc.notifies[i].type == 'wait for accept') {
                    if (doc.notifies[i].username == friendId) {
                        pointer = i;
                        isFound = true;
                    }
                }
            }
            if (isFound) doc.notifies = doc.notifies.splice(pointer,1);

            doc.save((err)=>{
                if (err) {
                    res.json({state: false});
                } else {
                    res.json({state: true});
                }
            });
        });

    });

    router.get('/acceptfriend', tokenCheck, (req,res)=> {
        let friendId = req.query.username;
        let userId = req.body.username;

        //update
        User.findOne({username: userId},(err,doc)=>{
            if (err) {
                res.json({state: false});
                return;
            }
            let pointer = 0;
            let n = doc.friends.length;
            for (let i = 0; i < n; i++) {
                if (doc.friends[i].username == friendId) {
                    doc.friends[i].relationType = 'friend';
                    break;
                }
            }
            n = doc.notifies.length;
            let isFound = false;
            for (let i = 0; i < n; i++) {
                if (doc.notifies[i].type == 'wait for accept') {
                    if (doc.notifies[i].username == friendId) {
                        pointer = i;
                        isFound = true;
                    }
                }
            }
            if (isFound) doc.notifies = doc.notifies.splice(pointer,1);

            doc.save((err)=>{
                if (err) {
                    res.json({state: false});
                } else {
                    res.json({state: true});
                }
            });
        });

        //notify to the one who has been accepted
    });


    router.get('/requestfriend', tokenCheck, (req, res) => {
        let friendId = req.query.username;
        let userId = req.body.username;

        //create notify data
        let notifyData = new Notify({
            type: 'friend request',
            sender: userId
        });

        //update in receiver
        let friendTypeInReceiver = new Friend({
            username: userId,
            relationType: 'wait for accept'
        });

        User.findOneAndUpdate(
            {username: friendId},
            {
                friends: friends.push(friendTypeInReceiver),
                notifies: notifies.unshift(notifyData).slice(0,50)
            }, (err,doc) => {
                if (err) {
                    res.json({state:false});
                    return;
                }
                if (!doc) {
                    res.json({state:false});
                    return;
                }
            }
        );


        //update in sender
        let friendTypeInSender = new Friend({
            username: friendId,
            relationType: 'sent request'
        });

        User.findOneAndUpdate(
            {username:userId},
            {
                friends: friends.push(friendTypeInSender)
            }, (err,doc) => {
                if (err) {
                    res.json({
                        state: false
                    });
                    return;
                }
            }
        );
    
        res.json({state: true});
    
        //notify to notification room of user

        io.to(gen(friendId)).emit('notify', notifyData);
    });

    router.get('/notify', tokenCheck,(req,res)=> { 
        User.findOne({username: req.body.username}, (err,doc)=>{
            if (err) {
                res.json(
                    {state: false, notifies: false}
                );
            } else {
                if (!doc) {
                    res.json({state: true, notifies: false});
                } else {
                    res.json({
                        state: true,
                        notifies: doc.notifies
                    });
                }
            }
        });
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
                    for (let i in doc.friends) {
                        if (i.username == userId) {
                            res.json({
                                state: true,
                                isFriend: i.relationType
                            });
                            return;
                        }
                        res.json({
                            state: true,
                            isFriend: false
                        });
                        return;
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


    router.post('/avatarupload', tokenCheck, saveAvatarHandlerMiddleware.single('avatar'), (req, res) => {
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