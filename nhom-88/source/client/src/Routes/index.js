import React from 'react';
import { Route, IndexRoute } from 'react-router';
import App from '../App';
import LoginPage from '../Login/Hello';
import RegisterPage from '../Signup/Register';
import DashboardPage from '../Components/dashBoard';
import Hello from '../Login/Hello';

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
  <Route path='/' component={Hello}>
    <IndexRoute component={LoginPage} />
    <Route path='login' component={LoginPage} />
    <Route path='register' component={RegisterPage} />
    <Route path='dashboard' component={DashboardPage} onEnter={requireAuth} />
  </Route>
);