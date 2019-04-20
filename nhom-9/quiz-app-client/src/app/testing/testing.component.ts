import { QuestionService } from './../_services/question.service';
import { Questions } from './../_models/question/mock-question';
import { Question } from './../_models/question/question';
import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Title } from '@angular/platform-browser';

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
  title: string;
  constructor(
    private titleService: Title,
    private route: ActivatedRoute,
    private questionService: QuestionService,
    private router: Router
    ) {}

  ngOnInit() {
    this.title = 'Test ' + (parseInt(this.route.snapshot.paramMap.get('id'), 10) + 1) ;
    this.titleService.setTitle(this.title);
    this.questions = this.questionService.getTest();
    this.length = this.questions.length;
    this.currentIndex = 0;
    this.update();
  }

  changeQuestionTo(i: number): void {
    this.currentIndex = i;
    this.update();
  }
  onClickPrev(): void {
    this.currentIndex = (this.length + this.currentIndex - 1) % this.length;
    this.update();
  }
  onClickNext(): void {
    this.currentIndex = (this.length + this.currentIndex + 1) % this.length;
    this.update();
  }
  onClickSubmit(): void {

  }
  update(): void {
    this.selectedQuestion = this.questions[this.currentIndex];
  }
  onClickLogo(): void {
    this.router.navigate(['/dashboard']);
  }
  onLogOut(): void {
    this.router.navigate(['/welcome']);
  }
}
