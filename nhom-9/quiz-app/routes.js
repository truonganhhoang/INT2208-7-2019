var express = require('express');
var router = express.Router();
var quizs = require('./models/Quiz');
var users = require('./models/Users');
router.get('/', (req, res, next) =>{
    quizs.getAllQuizs(function (err, rows) {
        if (err) {
            res.json(err);
        } else {
            res.json(rows);
        }
    });
})
router.get('/:id?', function (req, res, next) {
    if (req.params.id) {
        quizs.getQuizsByid(req.params.id, function (err, rows) {
            if (err) {
                res.json(err);
            } else {
                res.json(rows);
            }
        });
    } else {
        quizs.getAllQuizs('/', function (err, rows, next) {
            if (err) {
                res.json(err);
            } else {
                res.json(rows);
            }

        });
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

router.get('/api/users', function(req, res) {
    users.getAllUsers(function (err, rows) {
        if (err) {
            res.json(err);
        } else {
            res.json(rows);
        }
    });
});

router.post('/api/users', function (req, res, next) {
    console.log(req);
    users.addUser(req.body, function (err, count) {
        if (err) {
            res.json(err);
        } else {
            res.json(req.body);
        }
    });
});

router.delete('/api/users', function (req, res, next) {
    quizs.deleteQuiz(req.params.id, function (err, count) {
        if (err) {
            res.json(err);
        } else {
            res.json(count);
        }
    });
});

router.put('/api/users', function (req, res, next) {
    quizs.updateQuiz(req.params.id, req.body, function (err, rows) {
        if (err) {
            res.json(err);
        } else {
            res.json(rows);
        }
    });
});

module.exports = router;