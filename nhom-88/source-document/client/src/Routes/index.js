import React from 'react';
import {Router,Route, IndexRoute } from 'react-router';
import App from '../App';
import Home from '../Components/Home';
import LoginPage from '../Login/Login';
import RegisterPage from '../Signup/Reg';
import DashboardPage from '../Components/dashBoard';
import Page from '../Components/Home';
import ForgotPassword from '../Components/ForgotPassword';
import About from '../Components/About';


function isLoggedIn() {
  if (localStorage.getItem('token')) {
    return true;
  }

  return false;
}

function requireAuth(nextState, replace) {
  if (!isLoggedIn()) {
    replace({
      pathname: '/login'
    });
  }
}

export default (
  <Router>
    <IndexRoute component={Home} />
    <Route exac path='/' component={Home} />
    <Route path="/home" component={Page}/>
    <Route path='login' component={LoginPage} />
    <Route path='register' component={RegisterPage} />
    <Route path='forgot-password' component={ForgotPassword}/>
    <Route path="about" component={About}/>
    <Route path='dashboard' component={DashboardPage} onEnter={requireAuth} />
  </Router>
);