const pool = require('../dbConnection')
var users = {
	getAllUsers: function (callback) {
        return pool.query("select * from quiz_app.users;", callback);        
	},
	getQuizsByid: function (id, callback) {
		return pool.query("SELECT * FROM quiz_app.users WHERE id=?", [id], callback);
	},
	getUserByUsername: function (id, callback) {
		return pool.query("SELECT * FROM quiz_app.users WHERE userName=?", [id], callback);
	},
	getUserInfo: function (id, callback) {
		return pool.query("SELECT avatarLink FROM quiz_app.users WHERE userName=?", [id], callback);
	},
	addUser: function (user, callback) {
		return pool.query("INSERT INTO quiz_app.users(username, password) VALUES(?,?)",
		[user.name, user.password], callback);
	},
	deleteUser: function (id, callback) {
		return pool.query("delete FROM quiz_app.users WHERE id=?", [id], callback);
	},
	updateUser: function (id, quiz, callback) {
		return pool.query("UPDATE quiz_app.users SET question=?, optionA=?, optionB=?, optionC=?, optionD=?, trueAnswer=? WHERE id=?", [quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer, quiz.id], callback);
	},
	getSubmitDetail: function(userName, quizNumber, callback){
		return pool.query("SELECT  quiz_app.questions.questionContent, IF( quiz_app.submitdetail.answer = 'A', quiz_app.questions.optionA, IF(quiz_app.submitdetail.answer = 'B', quiz_app.questions.optionB, IF(quiz_app.submitdetail.answer = 'C', quiz_app.questions.optionC, IF(quiz_app.submitdetail.answer = 'D', quiz_app.questions.optionD, 'NA') ) ) ) as studentAnswer, IF( quiz_app.questions.trueAnswer = 'A', quiz_app.questions.optionA, IF(quiz_app.questions.trueAnswer = 'B', quiz_app.questions.optionB, IF(quiz_app.questions.trueAnswer = 'C', quiz_app.questions.optionC, IF(quiz_app.questions.trueAnswer = 'D', quiz_app.questions.optionD, 'NA') ) ) ) AS trueAnswer FROM quiz_app.submitdetail INNER JOIN quiz_app.questions ON quiz_app.questions.questionNumber = quiz_app.submitdetail.questionNumber INNER JOIN quiz_app.submit ON quiz_app.submit.submitNumber = quiz_app.submitdetail.submitNumber INNER JOIN quiz_app.users ON quiz_app.users.userNumber = submit.userNumber WHERE  quiz_app.users.userName = ? AND quiz_app.submit.quizNumber = ?", [userName, quizNumber], callback)
	}
};
module.exports = users;