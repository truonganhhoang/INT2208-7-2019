const pool = require('../dbConnection')
var quizs = {
	getAllQuizDetail: function (callback) {
		return pool.query("SELECT * FROM quiz_app.quizs", callback);
	},
	getQuestionsByQuizId: function (id, callback) {
		return pool.query("SELECT * FROM quiz_app.questions WHERE quizNumber=?", [id], callback);
	},

};
module.exports = quizs;