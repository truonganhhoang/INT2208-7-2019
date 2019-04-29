import React from 'react';
import {Link} from 'react-router';
//import ForgotPassword from './ForgotPassword';
import Menu from '../Components/Menu_';
import {
    Form, Icon, Input, Button, Checkbox,
  } from 'antd';

import {connect} from 'react-redux';
import { loginUserAction } from '../Actions/authenticationActions';


class Hello extends React.Component{

    render(){
        return(
          <React.Fragment>
            <Menu/>
            <div id="page-container">

                <div id="signin-wrapper">
                    <div className="signin-section">
                <WrappedNormalLoginForm/>
            </div>
            </div>
            </div>
            </React.Fragment>
        );
    }
}

  
  class NormalLoginForm extends React.Component {
      
   
    handleSubmit = (e) => {
      e.preventDefault();
      this.props.form.validateFields((err, values) => {
        if (!err) {
          const userName = values.userName;
          const pass = values.password;
          const remember = values.remember;

          const data = {
            userName,
            pass,
            remember
          }

          this.props.dispatch(loginUserAction(data));
        }
      });
    }
  
    render() {
      
      const { getFieldDecorator } = this.props.form;

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
        <Form onSubmit={this.handleSubmit} className="login-form">
          <Form.Item>
            {getFieldDecorator('userName', {
              rules: [{ required: true, message: 'Please input your username!' }],
            })(
              <Input  prefix={<Icon type="user" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Username" />
            )}
          </Form.Item>
          <Form.Item>
            {getFieldDecorator('password', {
              rules: [{ required: true, message: 'Please input your Password!' }],
            })(
              <Input  prefix={<Icon type="lock" style={{ color: 'rgba(0,0,0,.25)' }} />} type="password" placeholder="Password" />
            )}
          </Form.Item>
          <Form.Item>
            {getFieldDecorator('remember', {
              valuePropName: 'checked',
              initialValue: true,
            })(
              <Checkbox>Remember me</Checkbox>
            )}
            <a className="login-form-forgot" href="">Forgot password</a>
            <br/>
            <Button type="primary" htmlType="submit" className="login-form-button">
              Log in
            </Button>
            Or <a href="/signup">register now!</a>
          </Form.Item>
        </Form>
      );
    }
  }
  
const WrappedNormalLoginForm = Form.create({ name: 'normal_login' })(NormalLoginForm);

const mapStateToProps = (response) => ({response});
export default connect(mapStateToProps)(Hello);
