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
  questions: Question[] = Questions;
  constructor() {
    this.selectedQuestion = this.questions[0];
  }

  ngOnInit() {
  }
  changeQuizTo(question: Question): void {
    this.selectedQuestion = question;
  }
}
