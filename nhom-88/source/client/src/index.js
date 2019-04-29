import React from 'react';
import ReactDOM from 'react-dom';
//import App from './App';


import { Router, browserHistory } from 'react-router';

import { Provider } from 'react-redux';
import './CSS/styles.css';

import configureStore from './Stores/configureStore';
import routes from './Routes';



const store = configureStore();


ReactDOM.render(
  <Provider store={store}>
    <Router history={browserHistory} routes={routes} />
  </Provider>
  , document.getElementById('root'));