import React from 'react';
import {Menu, Icon, Form, Input, Button } from 'antd';
import {Link} from 'react-router';

class ForgotPassword extends React.Component{

    onHandlePasswordReset = (event) => {
        event.preventDefault();
    
        // to do
      }

    render(){
        return(
            <React.Fragment>
            <Menu>
                <Menu.Item>
                    <Icon type="unlock"/> Password Reset
                </Menu.Item>
            </Menu>

            <div id="page-container">
                <h2>Find your Twituetr account</h2>
                <p>Enter your email, phone number, or username.</p>
                <Form onSubmit={this.onHandlePasswordReset} className="login-form" >
                    <Form.Item>
                        <Input type="email" name="email" prefix={<Icon type="user" 
                        style={{ color: 'rgba(0,0,0,.25)' }} />} placeholder="Email" />
                </Form.Item>
                </Form>

                <Button type="primary" htmlType="submit" className="login-form-button">
                    Search
                </Button>
                <br></br>
                <br></br>
                Or <Link to="/login">login</Link>


            </div>


            </React.Fragment>
        );
    }
}

export default ForgotPassword;