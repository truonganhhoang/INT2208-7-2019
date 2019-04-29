import React, { Component } from 'react';
import { Link, browserHistory } from 'react-router';
import { connect } from 'react-redux';
import '../CSS/styles.css';
import Menu from '../Components/Menu_';
import {
  Form, Icon, Input, Button, Checkbox,
} from 'antd';

import { loginUserAction } from '../Actions/authenticationActions';

class NormalLoginForm extends Component {
  onHandleLogin = (event) => {
    event.preventDefault();

    let email = event.target.email.value;
    let password = event.target.password.value;

    const data = {
      email, password
    };

    this.props.dispatch(loginUserAction(data));
  }

  render() {
    let isSuccess, message;

    if (this.props.response.login.hasOwnProperty('response')) {
      isSuccess = this.props.response.login.response.success;
      message = this.props.response.login.response.message;
      
      if (isSuccess) {
        localStorage.removeItem('token');
        localStorage.setItem('token', this.props.response.login.response.token);
      }
    }

    return (
      <React.Fragment>
        
        <Menu/>
        <div className="page-content">
        <h3>Login Page</h3>
        {!isSuccess ? <div>{message}</div> : browserHistory.push('dashboard')}
        
        <form onSubmit={this.onHandleLogin} className="login-form">
          <Form.Item>
              <Input type="email" name="email" prefix={<Icon type="email" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Email" />
            </Form.Item>
            <Form.Item>
              
              <Input type="password" name="password" prefix={<Icon type="lock" style={{ color: 'rgba(0,0,0,.25)' }} />} type="password" placeholder="Password" />
            </Form.Item>

            <Form.Item>
          
          <Button type="primary" htmlType="submit" className="login-form-button">
            Log in
          </Button>
          <Checkbox>Remember me</Checkbox>

            <br></br>
            <a className="login-form-forgot" href="">Forgot password</a>

          Don't have account? <Link to='register'>Register here</Link>
        </Form.Item>
        </form>
        </div>
        
        
        </React.Fragment>
    );
  }
}


const mapStateToProps = (response) => ({response});

export default connect(mapStateToProps)(NormalLoginForm);
