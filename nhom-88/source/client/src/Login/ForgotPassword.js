import React from 'react';


class ForgotPassword extends React.Component{
    render(){
        return(
                <div id="forgot-password">
                    <h2>Thiết lập lại mật khẩu</h2>
                    <div id="fsection">
                        <h3>Tìm kiếm tài khoản của bạn </h3>
                        <p>Nhập email, số điện thoại hoặc tên người dùng của bạn.</p>

                        <form class="Form" action="/account/begin_password_reset" method="post">
                            <div className="form-group">
                                <input type="hidden" name="" value=""/>
                                <input 
                                    type="text" name="" 
                                    className="form-control" 
                                    value="" 
                                    autofocus 
                                    autocorrect="off" 
                                    autocapitalize="off"
                                    placeholder="Enter email"
                                />
                                <br/>
                            <button className="btn" id="btn-submit" type="submit">Tìm kiếm</button>
                            </div>
                        </form>
                    </div>
                    
                </div>
        
        );
        
    }
}

export default ForgotPassword;