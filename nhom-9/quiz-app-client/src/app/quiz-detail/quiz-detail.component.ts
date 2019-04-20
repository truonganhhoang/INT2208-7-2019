import { Component, OnInit } from '@angular/core';
import { Quiz } from '../_models/quiz-detail/quiz';
import { Quizs } from '../_models/quiz-detail/mock-quiz';
import { Router } from '@angular/router';

@Component({
  selector: 'app-quiz-detail',
  templateUrl: './quiz-detail.component.html',
  styleUrls: ['./quiz-detail.component.css']
})
export class QuizDetailComponent implements OnInit {
  quizs: Quiz[] = Quizs;
  constructor(private router: Router) { }

  ngOnInit() {
  }
  onGetQuiz(i: number): void {
    this.router.navigate(['/testing', i]);
  }
}
