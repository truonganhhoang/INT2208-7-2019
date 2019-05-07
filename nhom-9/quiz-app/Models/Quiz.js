const pool = require('../dbConnection')
var quizs = {
	getAllQuizDetail: function (userName, callback) {
		return pool.query(
			"SELECT quiz_app.quizs.quizNumber, quiz_app.quizs.catalogy,quiz_app.quizs.language, quiz_app.quizs.questionQuantity, " +
			"IF((SELECT quiz_app.submit.submitNumber " +
			"FROM quiz_app.submit " +
			"INNER JOIN quiz_app.users ON quiz_app.users.userNumber = quiz_app.submit.userNumber " +
			"WHERE quiz_app.users.userName = ? AND quiz_app.submit.quizNumber = quiz_app.quizs.quizNumber) IS NOT NULL, true, false) " +
			"AS isCompleted "+
			"FROM quiz_app.quizs",[userName], callback);
	},
	getQuestionsByQuizId: function (id, callback) {
		return pool.query("SELECT * FROM quiz_app.questions WHERE quizNumber=?", [id], callback);
	},

};
module.exports = quizs;
