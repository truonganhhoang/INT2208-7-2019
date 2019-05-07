var express = require('express');
var router = express.Router();
var quizs = require('./models/Quiz');
var users = require('./models/Users');
var jwt = require('jsonwebtoken');
var key = 'itsasecret';

router.get('/api/test/:id', function (req, res) {
    res.header('Access-Control-Allow-Origin', 'http://localhost:4200');
    res.header('Access-Control-Allow-Methods', 'GET');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    if (req.params.id) {
        quizs.getQuestionsByQuizId(req.params.id, function (err, rows) {
            if (err) {
                res.json(err);
            } else {
                res.json(rows);
            }
        });
    } else {
        res.json(rows);
    }
});

router.get('/api/testdetail', function (req, res) {
    res.header('Access-Control-Allow-Origin', 'http://localhost:4200');
    res.header('Access-Control-Allow-Methods', 'GET');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    var arr = req.headers.authorization.split(' ', 2);
    var token_type = arr[0], token = arr[1];
    try {
        var username = jwt.verify(token, key).username.userName;
        quizs.getAllQuizDetail(username, function (err, rows) {
            if (err) {
                res.json(err);
            } else {
                res.json(rows);
            }
        });
    } catch (e) {
        console.log(e)
        return res.status(401).send('unauthorized');
    }
});

router.post('/', function (req, res, next) {
    quizs.addQuiz(req.body, function (err, count) {
        if (err) {
            res.json(err);
        } else {
            res.json(req.body);
        }
    });
});

router.delete('/:id', function (req, res, next) {
    quizs.deleteQuiz(req.params.id, function (err, count) {
        if (err) {
            res.json(err);
        } else {
            res.json(count);
        }
    });
});

router.put('/:id', function (req, res, next) {
    quizs.updateQuiz(req.params.id, req.body, function (err, rows) {
        if (err) {
            res.json(err);
        } else {
            res.json(rows);
        }
    });
});
router.post('/api/submit/:id', function (req, res, next) {
    res.header('Access-Control-Allow-Origin', 'http://localhost:4200');
    res.header('Access-Control-Allow-Methods', 'GET');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    var arr = req.headers.authorization.split(' ', 2);
    var token_type = arr[0], token = arr[1];
    try {
        var result = req.body;
        console.log(result)
        result.forEach(element => {
            console.log(element)
        });
        var username = jwt.verify(token, key).username.userName;
        users.insertSubmit(username, req.params.id, function (err, rows) {
            if (err) {
                console.log("Lỗi bước 1 rồi nha cậu ơi.")
                res.json(err);
            } else {
                var submitId;
                console.log("Xong 1 bước rồi nha cậu ơi.")
                users.getSubmitId(username, req.params.id, function (err, rows) {
                    if (err) {
                        console.log("Lỗi bước 2 rồi nha cậu ơi.")
                        res.json(err);
                    } else {
                        submitId = rows[0].submitNumber;
                        console.log("Xong 2 bước  rồi nha cậu ơi.")
                        result.forEach(element => {
                            users.insertSubmitDetail(submitId, element.questionId, element.answer,function(err, rows){
                                if(err)
                                    res.json(err);
                            })
                        });
                    }
                }
                )
            }
        });
    } catch (e) {
        console.log(e)
        return res.status(401).send('unauthorized');
    }
});
router.get('/api/submitdetail/:id', function (req, res) {
    res.header('Access-Control-Allow-Origin', 'http://localhost:4200');
    res.header('Access-Control-Allow-Methods', 'GET');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    var arr = req.headers.authorization.split(' ', 2);
    var token_type = arr[0], token = arr[1];
    try {
        var username = jwt.verify(token, key).username.userName;
        users.getSubmitDetail(username, req.params.id, function (err, rows) {
            if (err) {
                res.json(err);
            } else {
                res.json(rows);
            }
        });
    } catch (e) {
        return res.status(401).send('unauthorized');
    }
});
router.get('/api/users', function (req, res) {
    res.header('Access-Control-Allow-Origin', 'http://localhost:4200');
    res.header('Access-Control-Allow-Methods', 'GET');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    var arr = req.headers.authorization.split(' ', 2);
    var token_type = arr[0], token = arr[1];
    try {
        var username = jwt.verify(token, key).username.userName;
        users.getUserInfo(username, function (err, rows) {
            if (err) {
                res.json(err);
            } else {
                res.json(rows);
                // console.log(rows[0]);
            }
        });
    } catch (e) {
        return res.status(401).send('unauthorized');
    }
});
router.post('/api/users/authenticate/:username', function (req, res) {
    // console.log(req);
    users.getUserByUsername(req.params.username, function (err, rows) {
        if (err) {
            res.status(401).json({
                sucess: false,
                token: null,
                err: 'Username or password is incorrect'
            });
        } else {
            if (rows.length > 0 && rows[0].password === req.body.password) {
                let token = jwt.sign(
                    { username: rows[0] },
                    key,
                    { expiresIn: 129600 }
                );
                // Sigining the token
                res.json({
                    status: 200,
                    sucess: true,
                    err: null,
                    token: token
                });
            } else {
                res.status(401).json({
                    sucess: false,
                    token: null,
                    err: 'Username or password is incorrect'
                });
            }
        }
    });
});

router.post('/api/users/register', function (req, res, next) {
    // console.log(req.body);
    users.addUser(req.body, function (err, count) {
        if (err) {
            res.json(err);
        } else {
            res.json(req.body);
        }
    });
});

router.delete('/api/users', function (req, res, next) {
    users.deleteUser(req.param.username, function (err, count) {
        if (err) {
            res.json(err);
        } else {
            res.json(count);
        }
    });
});

router.put('/api/users', function (req, res, next) {
    users.updateUser(req.params.id, req.body, function (err, rows) {
        if (err) {
            res.json(err);
        } else {
            res.json(rows);
        }
    });
});

module.exports = router;