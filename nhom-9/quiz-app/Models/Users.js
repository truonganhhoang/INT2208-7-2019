const pool = require('../dbConnection')
var users = {
	getAllUsers: function (callback) {
        return pool.query("select * from database_test.users;", callback);        
	},
	getQuizsByid: function (id, callback) {
		return pool.query("SELECT * FROM quizs WHERE id=?", [id], callback);
	},
	getUserByUsername: function (id, callback) {
		return pool.query("SELECT * FROM database_test.users WHERE username=?", [id], callback);
	},
	addUser: function (user, callback) {
		return pool.query("INSERT INTO database_test.users(username, password) VALUES(?,?)", 
		[user.name, user.password], callback);
	},
	deleteUser: function (id, callback) {
		return pool.query("delete FROM quizs WHERE id=?", [id], callback);
	},
	updateUser: function (id, quiz, callback) {
		return pool.query("UPDATE quizs SET question=?, optionA=?, optionB=?, optionC=?, optionD=?, trueAnswer=? WHERE id=?", [quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer, quiz.id], callback);
	}
};
module.exports = users;