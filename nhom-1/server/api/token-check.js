
require('dotenv').config();
const jwt = require('jsonwebtoken');

var middleware_TokenCheck = function(req,res,next) {
    if (req.headers.authorization && req.headers.authorization.split(' ')[0] == 'Bearer') {
        var token = req.headers.authorization.split(' ')[1];
        if (!token) {
            res.json({
                state:true,
                valid:false
            });
            return;
        }
        var valid = jwt.verify(token,process.env.TOKEN_SECRET);
        if (!valid) {
            res.json({
                state:true,
                valid:false
            });
            return;
        } else {
            req.body.username=valid.username;
            req.username=valid.username;
            next();
            return;
        }
        
    } else {
        res.json({
            state:true,
            valid:false
        });
        return;
    }
}


module.exports = middleware_TokenCheck;