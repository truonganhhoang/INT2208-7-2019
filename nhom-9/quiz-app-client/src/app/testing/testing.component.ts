import { QuestionService } from './../_services/question.service';
import { Questions } from './../_models/question/mock-question';
import { Question } from './../_models/question/question';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-testing',
  templateUrl: './testing.component.html',
  styleUrls: ['./testing.component.css']
})
export class TestingComponent implements OnInit {
  selectedQuestion: Question;
  questions: Question[];
  currentIndex: number;
  length: number;
  constructor(private questionService: QuestionService) {
  }

  ngOnInit() {
    this.questions = this.questionService.getTest();
    this.length = this.questions.length;
    this.currentIndex = 0;
    this.update();
  }
  changeQuestionTo(i: number): void {
    this.currentIndex = i;
    this.update();
  }
  onClickPrev() {
    this.currentIndex = (this.length + this.currentIndex - 1) % this.length;
    this.update();
  }
  onClickNext() {
    this.currentIndex = (this.length + this.currentIndex + 1) % this.length;
    this.update();
  }
  onClickSubmit() {

  }
  update() {
    this.selectedQuestion = this.questions[this.currentIndex];
  }
}
