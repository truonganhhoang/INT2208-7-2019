

module.exports = function(username1,username2) {
    return username1 > username2 ? '_'+username1.concat('_'+username2) : '_' + username2.concat('_'+username1+'_roomchat');
}

