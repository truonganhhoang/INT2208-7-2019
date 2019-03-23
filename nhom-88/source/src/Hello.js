import React from 'react';
import { readSync } from 'fs';
import {Switch, BrowserRouter as Router, Route, Link} from 'react-router-dom';
import ForgotPassword from './ForgotPassword';

class Hello extends React.Component{

    render(){
        return(
            <Router>
                <div id="page-container">
                <div id="signin-wrapper">
                    <div className="signin-section">

                        <h2>Log in to Twituet <i className="fas fa-sign-in-alt"></i></h2>

                        <div className="field">
                            <input className="form-control" type="text" name="username" placeholder="Student ID"/>
                        </div>
                        <br/>
                        <div className="field">
                            <input className="form-control" type="password" name="password" placeholder="Password" 
                            disabled/>
                        </div>
                        <br/>

                        <div className="subchck">
                            <button className="btn" id="btn-submit" type="submit">Log In</button>
                            <label className="t1-label remember">
                                <input type="checkbox" value="1" name="remember_me" checked="checked"/>
                                Remember me
                                <span className="separator">·</span>
                                <a className="forgot" href="/password_reset" rel="noopener">Forgotten your password?</a>
                            </label>
                         </div>
                    </div>
                    
                    <div className="footer-login">
                        <div className="field">
                            <p>New to Twituet? <a className="forgot" href="/signup" rel="noopener">Sign up now »</a></p>
                            <p>Already using Twitter via text message?  
                                <a className="forgot" href="/account/begin_password_signup" rel="noopener">
                                Activate your account »
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
                <Route exact path="/password_reset" component={ForgotPassword}/>
                </div>

            </Router>
        );
    }
}

export default Hello;