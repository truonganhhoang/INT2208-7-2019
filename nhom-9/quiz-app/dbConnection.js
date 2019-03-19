var mysql = require('mysql');
var pool = mysql.createPool({

    host: 'localhost',
    user: 'root',
    password: 'newpass',
    database: 'quiz-db'

});
module.exports = pool;