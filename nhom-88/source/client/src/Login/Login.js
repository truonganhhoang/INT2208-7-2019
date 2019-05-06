import React, { Component } from 'react';
import {browserHistory } from 'react-router';
import { connect } from 'react-redux';

import Menu from '../Components/Menu_';
import {Form, Input, Icon, Button, Checkbox, Spin, message} from 'antd';
import { loginUserAction  } from '../Actions/authenticationActions';

class LoginPage extends Component {
  onHandleRegistration = (event) => {
    event.preventDefault();

    let email = event.target.email.value;
    let password = event.target.password.value;

    const data = {
      email, password
    };

    console.log(data);
    this.props.dispatch(loginUserAction(data));
  }

  render() {
    let message_info, isSuccess;

    if (this.props.response.login.hasOwnProperty('response')) {
      isSuccess = this.props.response.login.response.success;
      message_info = ()=>{ message.info(this.props.response.login.response.message) };
    }
    
    return (
      <React.Suspense fallback={<Spin/>}>
        <Menu/>
        
        <div id="page-container">
        <h2>Login to Twituet</h2>

        {!isSuccess ? <div>{'khong thanh cong'}</div> : browserHistory.push('/')}

        <Form onSubmit={this.onHandleRegistration} className="login-form" >

          <Form.Item>
              <Input type="email" name="email" prefix={<Icon type="user" 
                    style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Email" />
          </Form.Item>

          <Form.Item>
              <Input type="password" name="password" prefix={<Icon type="lock" 
                    style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Password" />
          </Form.Item>

          <Form.Item>
            <div className="login-button">
                <Checkbox>Remember me</Checkbox> 
                <a className="login-form-forgot" href="">Forgot password</a><br></br>
                <Button type="primary" htmlType="submit" className="login-form-button">
                    Log in
                </Button><br></br>
                Or <a href="/register">Signup now!</a>
            </div>
        </Form.Item>

        </Form>
        </div>
        </React.Suspense>
    );
}}

const mapStateToProps = (response) => ({
  response
});

export default connect(mapStateToProps)(LoginPage);