
require('dotenv').config();
const jwt = require('jsonwebtoken');

var middleware_TokenCheck = function(req,res,next) {
    if (req.headers.authorization && req.headers.authorization.split(' ')[0] === 'Bearer') {
        var token = req.headers.authorization.split(' ')[1] | null;
        var valid = jwt.verify(token,process.env.TOKEN_SECRET);
        if (!valid) {
            res.json({
                state:false
            });
        } else {
            next();
        }
        
    } else {
        res.json({
            state:false
        });
    }
}


module.exports = middleware_TokenCheck;