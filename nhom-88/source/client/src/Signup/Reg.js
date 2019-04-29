import React from 'react';
import {Link} from 'react-router';
//import ForgotPassword from './ForgotPassword';
import Menu from '../Components/Menu_';
import {
    Form, Icon, Input, Button, Checkbox,
  } from 'antd';

import {connect} from 'react-redux';
import { loginUserAction } from '../Actions/authenticationActions';


class Register extends React.Component{

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
          const email = values.email;

          const data = {
            userName,
            pass,
            email
          }

          this.props.dispatch(loginUserAction(data));
        }
      });
    }
  
    render() {
      
      const { getFieldDecorator } = this.props.form;

      let message, isSuccess;

        if (this.props.response.register.hasOwnProperty('response')) {
        isSuccess = this.props.response.register.response.success;
        message = this.props.response.register.response.message;
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
            {getFieldDecorator('email', {
              rules: [{ required: true, message: 'Please input your email!' }],
            })(
              <Input  prefix={<Icon type="user" style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Email" />
            )}
          </Form.Item>
          <Form.Item>
            <a className="login-form-forgot" href="">Forgot password</a>
            <br/>
            <Button type="primary" htmlType="submit" className="login-form-button">
              Resgister
            </Button>
          </Form.Item>
        </Form>
      );
    }
  }
  
const WrappedNormalLoginForm = Form.create({ name: 'normal_login' })(NormalLoginForm);

const mapStateToProps = (response) => ({response});

export default connect(mapStateToProps)(Register);
