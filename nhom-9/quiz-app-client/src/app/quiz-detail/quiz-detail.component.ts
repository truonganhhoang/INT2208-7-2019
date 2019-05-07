import { QuestionService } from './../_services/question.service';
import { Component, OnInit } from '@angular/core';
import { Quiz } from '../_models/quiz-detail/quiz';
import { Router } from '@angular/router';

@Component({
  selector: 'app-quiz-detail',
  templateUrl: './quiz-detail.component.html',
  styleUrls: ['./quiz-detail.component.css']
})
export class QuizDetailComponent implements OnInit {
  testId = 1;
  quizs: Quiz[];
  constructor(
    private router: Router,
    private questionService: QuestionService
  ) { }

  ngOnInit() {
    this.questionService.getAllQuizDetail().subscribe(quizs => this.quizs = quizs);
  }
  onGetQuiz(i: number): void {
    this.testId = i;
  }
  onReview(i: number): void {
    this.testId = i;
  }
  onConfirm(option: number) {
    if (option === 0) {
      this.router.navigate(['/testing', this.testId]);
    }
    else {
      this.router.navigate(['/result', this.testId]);
    }
  }
}
