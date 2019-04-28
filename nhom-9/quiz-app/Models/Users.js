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
	addUser: function (user, callback) {
		return pool.query("INSERT INTO quiz_app.users(username, password) VALUES(?,?)", 
		[user.name, user.password], callback);
	},
	deleteUser: function (id, callback) {
		return pool.query("delete FROM quiz_app.users WHERE id=?", [id], callback);
	},
	updateUser: function (id, quiz, callback) {
		return pool.query("UPDATE quiz_app.users SET question=?, optionA=?, optionB=?, optionC=?, optionD=?, trueAnswer=? WHERE id=?", [quiz.question,quiz.optionA,quiz.optionB,quiz.optionC,quiz.optionD,quiz.trueAnswer, quiz.id], callback);
	}
};
module.exports = users;