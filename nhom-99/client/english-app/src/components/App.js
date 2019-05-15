import React, { Component } from 'react'
import '../css/App.css';
import Nav from './Nav';
import MainPart from './MainPart';
import Footer from './Footer';
import axios from 'axios'
import {Route} from "react-router-dom";
import Quiz from './Quiz'
import {connect} from 'react-redux'
import { withRouter } from 'react-router-dom'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      coursesData : [],
    }
    this.navigatorBackButton = this.navigatorBackButton.bind(this);
  }

  componentDidMount() {
    if(this.state.coursesData.length === 0) {
      axios.get('http://localhost:3000/courses/getApi')
      .then(res => {
        this.setState({
          coursesData : res.data
        })
      })
      .catch(err => {
        console.log(err)
      })
    }
  }
  navigatorBackButton() {
    if(this.props.location.pathname === '/'){
      this.props.editTitlePop();
    }
    //use regular expression
    else if(/\/quiz\/.*/.test(this.props.location.pathname) === true){
        this.props.editTitlePush();
    }
  }

  render() {
    this.navigatorBackButton()
    return (
      <React.Fragment>
          <Nav/>  
              <Route
                exact
                path='/'
                component={() => <MainPart dataReceive = {this.state.coursesData} />}
              />
              <Route
                exact
                path='/quiz/:id'
                component={Quiz} />
                
          <Footer/>
      </React.Fragment>
    )
  }
}


const mapStateToProps = (state, ownProps) => {
  return {
    controlNav: state.controlNavReducers.controlNav
  }
}

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    editTitlePop: () => {
      dispatch({type : "CHANGE_NAV_TITLE_POP"})
    },
    editTitlePush : () => {
      dispatch({type : "CHANGE_NAV_TITLE_PUSH"})
    }
  }
}


export default withRouter(connect(mapStateToProps, mapDispatchToProps)(App))

