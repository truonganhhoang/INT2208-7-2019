import React, { Component } from 'react';
import {
  BrowserRouter,
  Route,
  Switch
} from 'react-router-dom';

import PrivateRoute from './privateRoute';
import LoginPage from '../Login/Login';
import RegisterPage from '../Signup/Reg';
import DashboardPage from '../Components/dashBoard';

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div>
          <Switch>
            <Route path='/' exact={true} component={LoginPage} />
            <Route path='/login' component={LoginPage} />
            <Route path='/register' component={RegisterPage} />
            <PrivateRoute path='/dashboard' component={DashboardPage} />
          </Switch>
        </div>
      </BrowserRouter>
    );
  }
}

export default App;