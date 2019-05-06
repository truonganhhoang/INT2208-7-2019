import React, { Component } from 'react'
import '../css/App.css';
import Nav from './Nav';
import MainPart from './MainPart';
import Footer from './Footer';
import axios from 'axios'
import { BrowserRouter as Router, Route} from "react-router-dom";
import Quiz from './Quiz';




export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      coursesData : []
    }

  }
  
  componentWillMount() {
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

  render() {
    return (

    <React.Fragment>
        <Nav/>
        <Router>
          <Route
            exact
            path='/'
            component={() => <MainPart dataReceive = {this.state.coursesData} />}
          />

          <Route
            exact
            path='/quiz'
            component={Quiz} />
          
        </Router>
        
        <Footer/>
      </React.Fragment>
    )
  }
}



