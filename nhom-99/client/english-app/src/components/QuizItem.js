import React, { Component } from 'react'

export default class QuizItem extends Component {
  render() {
    return (
      <React.Fragment>  	
          <img src={require("../images/imagesCourse/" + this.props.image)} alt="img-answer" className="img-answer img-fluid m-auto" />
          <div className="answer-title ">
            {this.props.content}
          </div>
      </React.Fragment>
     
     
    )
  }
}
