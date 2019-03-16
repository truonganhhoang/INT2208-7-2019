var db = require('../dbConnection');

var quizs = {
	getAllquizs: function (callback) {
		return db.query("SELECT * FROM quizs", callback);
	},
	getquizsByid: function (id, callback) {
		return db.query("SELECT * FROM quizs WHERE id=?", [id], callback);
	},
	addQuiz: function (quiz, callback) {
		return db.query("Insert INT0 quizs(id, question, optionA, optionB, optionC, optionD, trueAnswer) VALUES(?,?,?,?,?,?)", [quiz.id, quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer], callback);
	},
	deleteQuiz: function (id, callback) {
		return db.query("delete FROM quizs WHERE id=?", [id], callback);
	},
	updateQuiz: function (id, quiz, callback) {
		return db.query("UPDATE quizs SET question=?, optionA=?, optionB=?, optionC=?, optionD=?, trueAnswer=? WHERE id=?", [quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer, quiz.id], callback);
	}
};
module.exports = quizs;