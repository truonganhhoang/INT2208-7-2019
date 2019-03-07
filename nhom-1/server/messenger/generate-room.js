

module.exports = function(username1,username2) {
    return username1 > username2 ? username1.concat(username2) : username2.concat(username1);
}

