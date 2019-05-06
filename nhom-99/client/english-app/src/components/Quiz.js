import React, { Component } from 'react'
import checkResult from '../images/right-check.png'
export default class Quiz extends Component {
  render() {
    return (
        <div className="main-part-quiz">
            <div className="frame-courses">
                <div className="question-title text-center mt-3">
                "đức anh là gì"
                </div>
                <div className="container mt-3 checkbox-result">
                <div className="row">
                    <div className="col-sm-3 box-result">
                    <div className="answer-box selected">	
                        <img src="../images/1.png" alt="img-answer" className="img-answer img-fluid m-auto" />
                        <div className="answer-title ">
                        đẹp trai
                        </div>
                    </div>
                    </div>
                    <div className="col-sm-3 box-result">
                    <div className="answer-box">	
                        <img src="../images/2.png" alt="img-answer" className="img-answer img-fluid m-auto" />
                        <div className="answer-title ">
                        vui tính
                        </div>
                    </div>
                    </div>
                    <div className="col-sm-3 box-result">
                    <div className="answer-box">	
                        <img src="../images/3.png" alt="img-answer" className=" img-answer img-fluid m-auto" />
                        <div className="answer-title ">
                        solo
                        </div>
                    </div>
                    </div>
                </div>
                </div>
                <div className="user-click">
                <div className="container">
                    <div className="row">
                    <div className="col-sm-2 float-left">
                        <img src={checkResult} className="img-check-result img-fluid" alt = "check-result" />
                    </div>
                    <div className="col-sm-7">
                        <h5 className="display-result">Đáp án đúng : <p className="display-4 final-result">đẹp trai</p></h5>
                    </div>
                    <div className="col-sm-2">
                        <button className="btn btn-warning">
                        Kiểm tra
                        </button>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            </div>

    )
  }
}
