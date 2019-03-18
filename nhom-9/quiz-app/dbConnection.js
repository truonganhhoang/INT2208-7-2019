var mysql = require('mysql');
var connection = mysql.createPool({

    host: 'localhost',
    user: 'root',
    password: 'newpass',
    database: 'quiz-db'

});
module.exports = connection;