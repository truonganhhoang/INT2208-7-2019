const passport = require('passport');
//return obbject
//call back isAuthenticted
module.exports = {
    ensureAuthenticated : function(req,res,next) {
        if(req.isAuthenticated()){
            return next();
        }
        else
        {
            req.flash('warning_mess','Đề nghị bạn quay lại trang đăng nhập');
            res.redirect('/users/register');
        }
    }
}