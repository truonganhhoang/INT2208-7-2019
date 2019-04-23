const pool = require('../dbConnection')
var quizs = {
	getAllQuizs: function (callback) {
		return pool.query("SELECT * FROM quiz_app.quizs", callback);
	},
	getQuizsByid: function (id, callback) {
		return pool.query("SELECT * FROM quiz_app.quizs WHERE id=?", [id], callback);
	},
	addQuiz: function (quiz, callback) {
		return pool.query("Insert INT0 quiz_app.quizs(id, question, optionA, optionB, optionC, optionD, trueAnswer) VALUES(?,?,?,?,?,?)", [quiz.id, quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer], callback);
	},
	deleteQuiz: function (id, callback) {
		return pool.query("delete FROM quiz_app.quizs WHERE id=?", [id], callback);
	},
	updateQuiz: function (id, quiz, callback) {
		return pool.query("UPDATE quiz_app.quizs SET question=?, optionA=?, optionB=?, optionC=?, optionD=?, trueAnswer=? WHERE id=?", [quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer, quiz.id], callback);
	}
};
module.exports = quizs;