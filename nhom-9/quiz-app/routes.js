var express = require('express');
var router = express.Router();
var quizs = require('./Models/Quiz');
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
        quizs.getQuizByid(req.params.id, function (err, rows) {
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
module.exports = router;