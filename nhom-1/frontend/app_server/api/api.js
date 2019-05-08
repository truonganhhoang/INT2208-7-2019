require('dotenv').config();
const express = require('express');
const router = express.Router();
const mongoose = require('mongoose');
const multer = require('multer');
const tokenCheck = require('./token-check');
const mqttClient = require('./../common/mqttConnect');


const userSchema = require('./../model/user.model');
const friendSchema = require('./../model/friend.model');
const notifySchema = require('./../model/notify.model');
const messengerRoom = require('./../model/messenger-room.model');
const genNoti = require('./generate-room-notification');
const messageThread = require('./../model/thread-message.model');
const postSchema = require('./../model/thread.model');
const commentSchema = require('./../model/comment.model');
const NotifyObject = require('./../model/notifyObj.model');

const Comment = mongoose.model('Comment', commentSchema);
const Post = mongoose.model('Post', postSchema);
const User = mongoose.model('User', userSchema);
const Friend = mongoose.model('Friend', friendSchema);
const Notify = mongoose.model('Notify', notifySchema);
const MessengerRoom = mongoose.model('MessengerRoom', messengerRoom);
const MessengerThread = mongoose.model('MessengerThread', messageThread);

var storageAvatar = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './../src/assets/data/avatar/');
    },
    filename: function (req, file, cb) {
        cb(null, req.username);
    }
});

var storagePicture = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './data/picture/');
    },
    filename: function (req, file, cb) {
        cb(null, req.username + '_' + String(Date.now()))
    }
});

var saveAvatarHandlerMiddleware = multer({ storage: storageAvatar });

var savePictureHandlerMiddleware = multer({ storage: storagePicture });


router.post('/mark-read', tokenCheck, (req,res)=>{
    let roomId = req.body.roomId;
    let user = req.body.username;

    MessengerRoom.findById(roomId, (err,doc)=>{
        if (err) {
            res.json({state: false});
            return;
        }
        if (doc) {
            let found = false;
            let pos = 0;
            for (let i = 0; i < doc.unread.length; i++) {
                if (doc.unread[i] == user) {
                    pos = i;
                    found = true;
                    break;
                }
            }
            if (found)
            doc.unread.splice(pos,1);
            doc.save((err)=>{
                if (err) {
                    res.json({state: false});
                } else {
                    res.json({state: true});
                }
            })
        } else {
            res.json({state: false});
        }
    });
});

router.post('/delete-post', tokenCheck, (req,res)=>{
    let postId = req.body.postId;
    Post.findByIdAndDelete(postId, (err)=>{
        if (err) {
            res.json({state: false});
        } else {
            res.json({state: true});
        }
    });
});

router.get('/get-notify', tokenCheck, (req,res)=>{
    let user = req.body.username;

    User.findOne({username: user}, (err,doc)=>{
        if (err) {
            res.json({state: false});
            return;
        }
        if (doc) {
            res.json({
                state: true,
                notifies: doc.notifies,
                unread: doc.unreadNotifies
            });
        } else {
            res.json({
                state: false
            });
        }
    });
});

router.get('/reset-notify', tokenCheck, (req,res)=>{
    let user = req.body.username;

    User.findOne({username: user}, (err,doc)=>{
        if (err) {
            res.json({state:false});
            return;
        }
        if (doc) {
            doc.unreadNotifies = 0;
            doc.save(err=>{
                if (err) {
                    res.json({state:false});
                } else {
                    res.json({state: true});
                }
            });
        } else {
            res.json({state: false});
        }
    });
});

router.get('/get-own-post', tokenCheck, (req,res)=>{
    let user = req.body.username;
    Post.find({author: user}, (err,docs)=>{
        if (err) {
            res.json({state: false});
            return;
        }
        res.json({state:true, posts: docs});
    });
});

router.post('/delete-comment', tokenCheck, (req,res)=>{
    let postId = req.body.postId;
    let commentId = req.body.commentId;
    
    Post.findById(postId, (err,doc)=>{
        if (err) {
            res.json({state:false});
            return;
        }
        if (doc) {
            let pointer = 0;
            let isFound = false;
            let n = doc.comments.length;
            for (let i = 0; i < n; i++) {
                if (doc.comments[i]._id == commentId) {
                    pointer = i;
                    isFound = true;
                    break;
                }
            }
            if (isFound) {
                doc.comments.splice(pointer,1);
            }
            doc.save((err)=>{
                if (err) {
                    res.json({state: false});
                } else {
                    res.json({state: true});
                }
            });
        } else {
            res.json({state: false});
        }
    });
});


router.post('/unlike-post', tokenCheck, (req,res)=>{
    let postId = req.body.postId;
    let user = req.body.username;

    Post.findById(postId, (err,doc)=>{
        if (err) {
            res.json({state:false});
            return;
        } 
        if (doc) {
            let pointer = 0;
            let isFound = false;
            let n = doc.likes.length;
            for (let i = 0; i < n; i++) {
                if (doc.likes[i] == user) {
                    pointer = i;
                    isFound = true;
                    break;
                }
            }
            if (isFound) {
                doc.likes.splice(pointer,1);
            }
            doc.save(err=>{
                if (err) {
                    res.json({state: false});
                } else {
                    res.json({state: true});
                }
            });
        } else {
            res.json({state: false});
        }
    });
});

router.get('/getfullpost', tokenCheck, (req,res)=>{
    Post.find({}, (err,docs)=>{
        if (err) {
            res.json({state: false});
            return;
        }
        res.json({state:true, posts: docs});
    });
});

router.post('/like-post', tokenCheck, (req,res)=>{
    let postId = req.body.postId;
    let user = req.body.username;

    Post.findById(postId, (err,doc)=>{
        if (err) {
            res.json({state:false});
            return;
        }
        if (doc) {
            let found = false;
            for (let i = 0; i < doc.likes.length; i++) {
                if (doc.likes[i] == user) {
                    found = true;
                    break;
                }
            }
            if (!found) doc.likes.push(user);
            if (user == doc.author) {
                res.json({state:true});
                return;
            }
            found = false;
            for (let i = 0; i < doc.likesHistory.length; i++) {
                if (doc.likesHistory[i] == user) {
                    found = true;
                    break;
                }
            }
            
            if (!found) {
                doc.likesHistory.push(user);
                let notifyData = new NotifyObject();
                notifyData.type = 'like post';
                notifyData.payload.sender = user;
                notifyData.payload.postId = postId;
                notifyData.payload.postAuthor = doc.author;
                let newNotify = new Notify();
                newNotify.type = 'like post';
                newNotify.payload.sender = user;
                newNotify.payload.postId = postId;
                newNotify.payload.postAuthor = doc.author;
                for (let i = 0; i < doc.subcribers.length; i++) {
                    //notify by mqtt
                    mqttClient.publish('notify/'+ doc.subcribers[i], JSON.stringify(notifyData), {qos:2});
                    
                    User.findOne({username: doc.subcribers[i]}, (err,docUser)=>{
                        if (!err) {
                            if (docUser) {
                                while (docUser.notifies.length > 50) {
                                    docUser.notifies.pop();
                                }
                                docUser.notifies.unshift(newNotify);
                                doc.unreadNotifies = doc.unreadNotifies + 1;
                                docUser.save((err)=>{
                                    if (err) {
                                        console.log('err in save notify like post');
                                    }
                                });
                            }
                        }
                    });
                }
            }

            found = false; 
            for (let i = 0; i < doc.subcribers.length; i++) {
                if (doc.subcribers[i] == user) {
                    found = true;
                    break;
                }
            }
            if (!found) doc.subcribers.push(user);
            doc.lastInteract = new Date();
            doc.save((err)=>{
                if (err) {
                    res.json({state:false});
                } else {
                    res.json({state: true});
                }
            });
        }
    });
});

router.get('/get-post', tokenCheck, (req,res)=>{
    let postId = req.query.postid;

    Post.findById(postId, (err,doc)=>{
        if (err) {
            res.json({state: false});
            return;
        }
        if (doc) {
            res.json({state: true, post: doc});
        }
        else {
            res.json({state: true, post: false});
        }
    });
});

router.post('/post-comment', tokenCheck, (req,res)=>{
    let user = req.body.username;
    let commentContent = req.body.content;
    let postId = req.body.postId;

    Post.findById(postId, (err,doc)=>{
        if (err) {
            res.json({
                state: false
            });
            return;
        } else if (doc) {
            let found = false;
            for (let i = 0; i < doc.subcribers.length; i ++) {
                if (user == doc.subcribers[i]) {
                    found = true;
                    break;
                }
            }
            if (!found) {
                doc.subcribers.push(user);
            }
            let newComment = new Comment();
            newComment.content = commentContent;
            newComment.sender = user;
            newComment.postId = postId;
            doc.comments.push(newComment);
            doc.lastInteract = new Date();
            doc.save((err,docPost)=>{
                if (err) {
                    res.json({state: false});
                    return;
                } else {
                    res.json({state: true, comment: newComment});
                }
                let newNotify = new Notify();
                newNotify.type = 'comment to post';
                newNotify.payload.sender = user;
                newNotify.payload.postId = postId;
                newNotify.payload.postAuthor = doc.author;
                let newMqttNotify = new NotifyObject();
                newMqttNotify.type = 'comment to post';
                newMqttNotify.payload.sender = user;
                newMqttNotify.payload.postId = postId;
                newMqttNotify.payload.postAuthor = doc.author;
                for (let i = 0; i < docPost.subcribers.length; i++) {
                    if (user != docPost.subcribers[i]) {
                        //notify to user
                        mqttClient.publish('notify/'+docPost.subcribers[i], JSON.stringify(newMqttNotify), {qos:2});

                        //then save
                        User.findOne({username: docPost.subcribers[i]}, (err,docUser)=>{
                            if (!err) {
                                while (docUser.notifies.length > 50) {
                                    docUser.notifies.pop();
                                }
                                docUser.notifies.unshift(newNotify);
                                doc.unreadNotifies = doc.unreadNotifies + 1;
                                docUser.save(err=>{if (err) console.log(err)});
                            }
                        });
                    }
                }
            });
        }
    });
});

router.post('/post-thread', tokenCheck, (req,res)=>{
    let user = req.body.username;
    let content = req.body.content;
    
    let post = new Post();
    post.author = user;
    post.subcribers = [];
    post.subcribers.push(user);
    post.content = content;

    post.save((err,doc)=>{
        if (err) {
            res.json({
                state: false
            });
        } else {
            res.json({
                state: true,
                post: doc
            });
        }

    });
});

router.get('/createroom', tokenCheck, (req,res)=>{
    let user1 = req.body.username;
    let user2 = req.query.username;

    //check if user is exist ?
    User.findOne({username: user2}, (err,doc)=>{
        if (err) {
            res.json({state:false});
            return;
        }
        if (doc) {
            let thread = new MessengerThread();
            thread.save((err, doc1)=>{
                if (err) {
                    res.json({
                        state: false
                    });
                    return;
                }
                let room = new MessengerRoom();
                room.authors = [];
                room.authors.push(user1);
                room.authors.push(user2);
                room.thread = doc1._id;
                room.save((err, doc2)=>{
                    if (err) {
                        res.json({
                            state: false
                        });
                        return;
                    }
                    res.json({
                        state: true,
                        room: doc2
                    });
                });
            });
        } else {
            res.json({
                state: true,
                room: false
            });
        }
    });
});

router.get('/get-threadchat', tokenCheck, (req,res)=>{
    threadId = req.query.thread;
    MessengerThread.findById(threadId, (err,doc)=>{
        if (err) {
            res.json({
                state: false
            });
            return;
        }
        res.json({
            state: true,
            thread: doc
        });
    });
});

router.get('/getlistchat', tokenCheck, (req,res)=>{
    let user = req.body.username;
    MessengerRoom.find({authors: user}, 
        (err,docs) => {
            if (err) {
                res.json({state: false});
                return;
            }
            res.json({
                state: true,
                list: docs
            });
        }
    );

});


router.get('/search', (req,res)=>{
    let searchQuery = req.query.q;
    let regex = new RegExp("(.)*"+searchQuery+"(.)*","g");
    User.find(
        {$or:[{username: regex},{name: regex}]},
        (err,docs)=>{
            if (err) {
                res.json({state:false});
                return;
            }
            res.json({
                state:true,
                results: docs.map(obj=>{
                    return {
                        username: obj.username,
                        name: obj.name,
                        avatarUrl: obj.avatarUrl,
                        gender: obj.gender
                    }
                })
            });
        }
    );
});

router.get('/get-roomchat', tokenCheck, (req,res)=> {
    let roomChatId = req.query.roomid;

    MessengerRoom.findById(roomChatId, (err, doc)=>{
        if (err) {
            res.json({state:false});
        }
        if (doc) {
            res.json({
                state: true,
                roomchat: doc
            });
        } else {
            res.json({
                state: true,
                roomchat: null
            });
        }
    });
});

router.get('/rejectfriend', tokenCheck, (req,res)=> {
    let friendId = req.query.username;
    let userId = req.body.username;


    User.findOne({username: friendId},(err,doc)=>{
        if (err) {
            res.json({state:false});
            return;
        }
        if (!doc) {
            res.json({state:false});
        }

        let n = doc.friends.length;
        let isFound = false;
        let pointer = 0;
        for (let i = 0; i < n; i++) {
            if (doc.friends[i].username == userId) {
                pointer = i;
                isFound = true;
                break;
            }
        }
        
        if (isFound) {
            doc.friends.splice(pointer,1);
        } else {
            res.json({state:false});
            return;
        }

        doc.save((err)=>{
            if (err) {
                res.json({state:false});
                return;
            }
            if (!doc) {
                res.json({state:false});
                return;
            }
            User.findOne({username: userId},(err,doc)=>{
                if (err) {
                    res.json({state: false});
                    return;
                }
                if (!doc) {
                    res.json({state:false});
                    return;
                }

                let pointer = 0;
                let isFound = false;
                let n = doc.friends.length;
                for (let i = 0; i < n; i++) {
                    if (doc.friends[i].username == friendId) {
                        pointer = i;
                        isFound = true;
                        break;
                    }
                }
                if (isFound) {
                    doc.friends.splice(pointer,1);
                } else {
                    res.json({state:false});
                    return;
                }
                n = doc.notifies.length;
                isFound = false;
                for (let i = 0; i < n; i++) {
                    if (doc.notifies[i].type == 'friend request') {
                        if (doc.notifies[i].username == friendId) {
                            pointer = i;
                            isFound = true;
                            break;
                        }
                    }
                }
                if (isFound) doc.notifies.splice(pointer,1);
    
                doc.save((err)=>{
                    if (err) {
                        res.json({state: false});
                    } else {
                        res.json({state: true});
                    }
                });
            });

        });
    });

});

router.get('/acceptfriend', tokenCheck, (req,res)=> {
    let friendId = req.query.username;
    let userId = req.body.username;

    //update

    User.findOne({username: friendId},(err,doc)=> {
        if (err) {
            res.json({state:false});
            return;
        }
        if (!doc) {
            res.json({state:false});
            return;
        }

        let notifyData = new Notify({
            type: 'friend accepted',
            payload: {
                sender: userId
            }
        });

        let notifyMqttData = new NotifyObject();
        notifyMqttData.type = 'friend accepted';
        notifyMqttData.payload.sender = userId;

        mqttClient.publish('notify/'+friendId, JSON.stringify(notifyMqttData), {qos:2});

        doc.notifies.unshift(notifyData);
        doc.unreadNotifies = doc.unreadNotifies + 1;

        while (doc.notifies.length > 50) {
            doc.notifies.pop();                
        }

        let n = doc.friends.length;
        for (let i = 0; i < n; i++) {
            if (doc.friends[i].username == userId) {
                doc.friends[i].relationType = 'friend';
            }
        }

        doc.save((err)=>{
            if (err) {
                res.json({state:false});
                return;
            } 
            if (!doc) {
                res.json({state:false});
                return;
            }
            User.findOne({username: userId},(err,doc)=>{
                if (err) {
                    res.json({state: false});
                    return;
                }
                if (!doc) {
                    res.json({state:false});
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
                    if (doc.notifies[i].type == 'friend request') {
                        if (doc.notifies[i].payload.sender == friendId) {
                            pointer = i;
                            isFound = true;
                            break;
                        }
                    }
                }
                if (isFound) doc.notifies.splice(pointer,1);
    
                doc.save((err)=>{
                    if (err) {
                        res.json({state: false});
                    } else {
                        res.json({state: true});
                    }
                });
            });
        });
    });

});

router.post('/get-post-from-user', tokenCheck, (req,res)=>{
    let user = req.body.userPost;
    Post.find({author: user}, (err,docs)=>{
        if (err) {
            res.json({state: false});
            return;
        }
        res.json({state:true, posts: docs});
    });
});

router.get('/requestfriend', tokenCheck, (req, res) => {
    let friendId = req.query.username;
    let userId = req.body.username;

    //create notify data
    let notifyData = new Notify({
        type: 'friend request',
        payload: {sender: userId}
    });

    let notifyMqttData = new NotifyObject();
    notifyMqttData.type = 'friend request';
    notifyMqttData.payload.sender = userId;
    
    mqttClient.publish('notify/'+friendId, JSON.stringify(notifyMqttData), {qos:2});

    //update in receiver
    let friendTypeInReceiver = new Friend({
        username: userId,
        relationType: 'wait for accept'
    });
    let friendTypeInSender = new Friend({
        username: friendId,
        relationType: 'sent request'
    });

    User.findOne(
        {username: friendId},
        (err,doc) => {

            console.log(err);
            console.log(doc);
            if (err) {
                res.json({state: false});
                //run here
                return;
            }
            if (!doc) {
                res.json({state: false});
                return;
            }
            doc.friends.push(friendTypeInReceiver);
            doc.notifies.unshift(notifyData);
            doc.unreadNotifies = doc.unreadNotifies + 1;

            if (doc.notifies.length > 50) {
                doc.notifies.pop();                
            }
            
            doc.save((err)=>{
                if (err) {
                    res.json({state:false});
                    return;
                }
                if (!doc) {
                    res.json({state:false});
                    return;
                }
            });

            User.findOne(
                {username: userId},
                (err,doc) => {
                    if (err) {
                        res.json({state: false});
                        return;
                    }
                    if (!doc) {
                        res.json({state:false});
                        return;
                    }
                    doc.friends.push(friendTypeInSender);
                    doc.save((err)=>{
                        if (err) {
                            res.json({state:false});
                            return;
                        }
                        if (!doc) {
                            res.json({state:false});
                            return;
                        }
                        res.json({state:true});
                    });
                }
            );
        }
    );
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

router.post('/modify-password', tokenCheck, (req,res)=> {
    let newPassword = req.body.password;
    let hashedPassword = bcrypt.hashSync(newPassword,Number(process.env.SALT_ROUND));

    User.findOneAndUpdate({ username: req.body.username }, { password: hashedPassword }, (err, doc) => {
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
    User.findOne({ username: userId }, (err, doc) => {
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
                let n = doc.friends.length;
                for (let i = 0; i < n; i++) {
                    if (doc.friends[i].username == friendId) {
                        res.json({
                            state: true,
                            isFriend: doc.friends[i].relationType
                        });
                        return;
                    }
                }
                res.json({
                    state: true,
                    isFriend: false
                });
                return;
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

module.exports = router;
