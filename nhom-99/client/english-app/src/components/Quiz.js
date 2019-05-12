import React, { Component } from 'react'
import correctImg from '../images/right-check.png'
import wrongImg from '../images/wrong-check.png'
import hanoiImg from '../images/imagesCourse/Hanoi.png'
import QuizItem from './QuizItem';
import axios from 'axios'
import classNames from 'classnames'
import ProgressBar from 'react-bootstrap/ProgressBar'
import CircularProgressbar from 'react-circular-progressbar';
import 'react-circular-progressbar/dist/styles.css';


export default class Quiz extends Component {
    constructor(props) {
        super(props);
        // 0 null
        // 1 true
        // 2 false
        this.questionNumber = 0;
        this.score = 0;
        this.state = {
            dataQuestion : [],
            ownStatus : 0,
            isActive : 'none',
            isChecked : false,
            userAnswer : '',
            currentQuestion : '',
            currentOptions : {},
            correctOption : '',
            totalCorrect : 0,
            totalWrong : 0,
            progressBar : 0,
            quizFinish : false
        }
    }
    componentDidMount() {
        if(this.state.dataQuestion.length === 0) {
            axios.get('http://localhost:3000/courses/getApiQuiz')
            .then(res => {
                res.data.forEach((value, key) => {
                    if(value._id === this.props.match.params.id){
                        let jdata = value.quiz;
                        let arrnew = Object.keys(jdata).map( function(k) { return jdata[k] });
                        this.setState({
                            dataQuestion : [...arrnew],
                            currentQuestion : arrnew[this.questionNumber].question,
                            currentOptions : arrnew[this.questionNumber].options,
                            correctOption : arrnew[this.questionNumber].correctoption,
                        })
                        return true;
                    }
                })   
              
            })
            .catch(err => {
              console.log(err)
            })
        }
    }


  changeActive(key) {
      this.setState({
          isActive : key
      })
     
  }

  nextQuestion () {
      this.setState({
          ownStatus : 0,
          isChecked : !this.state.isChecked,
          userAnswer : '',
          isActive : 'none'
      })
      const getData = [...this.state.dataQuestion]
      if(this.questionNumber < getData.length - 1) {
          this.questionNumber++;
          this.setState({
            currentQuestion : getData[this.questionNumber].question,
            currentOptions : getData[this.questionNumber].options,
            correctOption : getData[this.questionNumber].correctoption,
          })
      }
      else if(this.questionNumber === getData.length - 1){
          this.setState({
            quizFinish : true,
          })
      }
  }

  

  getAnswer(answer) {
    this.setState({
        userAnswer : answer
    })
  }

  checkCorrectAnswer() {
      this.setState({
        isChecked : !this.state.isChecked,
        progressBar : this.state.progressBar + 10
      })
      const answer = this.state.userAnswer;
      if(answer === this.state.correctOption){
          this.score ++;
          this.setState({
            ownStatus : 1,
            totalCorrect : this.state.totalCorrect + 1
          })
      }
      else {
          this.setState({
            ownStatus : 2,
            totalWrong : this.state.totalWrong + 1
          })
      }
  }


  restartQuiz() {
        const getData = [...this.state.dataQuestion];
        this.questionNumber = 0;
        this.score = 0;
        this.setState({
        isActive : 'none',
        ownStatus : 0,
        isChecked : false,
        userAnswer : '',
        currentQuestion : getData[this.questionNumber].question,
        currentOptions : getData[this.questionNumber].options,
        correctOption : getData[this.questionNumber].correctoption,
        totalWrong : 0,
        totalCorrect : 0,
        progressBar : 0,
        quizFinish : false
        })
    }

  renderImg() {
      if(this.state.ownStatus === 1){
          return (
            <img src={correctImg} className="img-check-result img-fluid" alt = "check-result" />
          )
      }
      else if(this.state.ownStatus === 2){
        return (
            <img src={wrongImg} className="img-check-result img-fluid" alt = "check-result" />
          )
      }
          
  }
  renderAnswer(answer) {
      if(this.state.ownStatus !== 0){
        return (
            <h5 className="display-result">Đáp án đúng : <p className="display-4 final-result">{answer}</p></h5>
        )
      }
  }

  renderButton(){
      if(!this.state.isChecked){
          let disable = this.state.userAnswer.length > 0
          return (
              <button className="btn btn-warning clicked-check" onClick = {this.checkCorrectAnswer.bind(this)} disabled = {!disable}>
                    Kiểm tra
                </button>
          )
      }
      else{
        return (
            <button className="btn btn-warning clicked-check" onClick = {this.nextQuestion.bind(this)}>
               Tiếp tục
            </button>
        )
      }
  }
  
  render() {
    let trueAnswer = '' , max = this.state.dataQuestion.length * 10 , percentage = (this.state.totalCorrect/this.state.dataQuestion.length) * 100;
    if(this.state.currentOptions[this.state.correctOption]){
        trueAnswer = this.state.currentOptions[this.state.correctOption].content
    }
    const options = this.state.currentOptions;
    const optionsArr = Object.keys(options).map((key) => {
        return (
            <div key = {key} className="col-sm-3 box-result"  onClick = {this.getAnswer.bind(this,key)} >
                <div className={classNames("answer-box" ,{'selected' : this.state.isActive === key} )}
                    onClick = {this.changeActive.bind(this,key)}  >
                    <QuizItem  content = {options[key].content} image = {options[key].images} 
                    />
                </div>
            </div>
        )
    });
    
    if(!this.state.quizFinish){
        return (
            <div className="main-part-quiz">
                <div className="frame-courses">
                        <ProgressBar now={this.state.progressBar} max = {max}/>
                        <div className="question-title text-center mt-3">
                        {this.state.currentQuestion}
                        </div>
                        <div className="container mt-3 checkbox-result">
                            <div className="row" >     
                                {        
                                    optionsArr
                                }     
                            </div>
                        </div>            
                        <div className={classNames('user-click' , {'green-box' : this.state.ownStatus === 1} , {'red-box' : this.state.ownStatus === 2})}>
                            <div className="container">
                                <div className="row">
                                <div className="col-sm-2 float-left">
                                    {this.renderImg()}
                                </div>
                                <div className="col-sm-7">
                                    {this.renderAnswer(trueAnswer)}
                                </div>
                                <div className="col-sm-2">
                                    {this.renderButton()}
                                </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
    
        )
    }
    else {
        return (
            <div className="main-part-quiz">
                <div className="frame-courses">
                    <div className="container">
                            <div className="row">
                                <h3 className="display-3 completed-quiz">
                                Bạn vừa trả lời đúng : <b>{this.state.totalCorrect + "/" + this.state.dataQuestion.length}</b> câu hỏi
                                </h3>
                            </div>
                            <CircularProgressbar className = "circularprogressbar-finished" initialAnimation = {true}
                            percentage={Math.floor(percentage)} 
                            text={`${Math.floor(percentage)}%`} 
                            styles={{
                                path: {
                                transition: 'stroke-dashoffset 0.5s ease 0s',
                                }
                             }}
                            />
                            <div className="row">
                                <img src={hanoiImg} alt="finished" className="img-fluid finished img-hanoi" />
                            </div>
                            <div className="row">
                                <button className="btn btn-outline-warning restart-button" onClick = {this.restartQuiz.bind(this)}>Làm lại bài</button>
                            </div>
                    </div>
                </div>
            </div>
        )
    }
    
  }
}
