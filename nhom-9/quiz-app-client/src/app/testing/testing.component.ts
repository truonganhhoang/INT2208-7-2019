import { QuestionService } from './../_services/question.service';
import { Questions } from './../_models/question/mock-question';
import { Question } from './../_models/question/question';
import { Component, OnInit, ElementRef, Renderer2, ViewChildren, QueryList } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { Title } from '@angular/platform-browser';

@Component({
  selector: 'app-testing',
  templateUrl: './testing.component.html',
  styleUrls: ['./testing.component.css']
})
export class TestingComponent implements OnInit {
  @ViewChildren('checkbox') cbElement: QueryList<ElementRef>;
  selectedQuestion: Question;
  map: Map<number, string> = new Map();
  questions: Question[];
  currentIndex: number;
  length: number;
  title: string;
  constructor(
    private titleService: Title,
    private route: ActivatedRoute,
    private questionService: QuestionService,
    private router: Router
  ) { }

  ngOnInit() {
    this.title = 'Test ' + (parseInt(this.route.snapshot.paramMap.get('id'), 10) + 1);
    this.titleService.setTitle(this.title);
    this.questions = this.questionService.getTest(parseInt(this.route.snapshot.paramMap.get('id'), 10) + 1);
    // console.log(this.questions);
    this.length = this.questions.length;
    this.currentIndex = 0;
    this.update();
  }

  changeQuestionTo(i: number): void {
    this.currentIndex = i;
    this.update();
  }
  onClickCheckbox(event: any) {
    const elementId: string = (event.target as Element).id;
    console.log(this.currentIndex + ' ' + elementId);
    this.map.set(this.currentIndex, elementId);
    console.log(this.map.size);
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
    this.router.navigate(['/test']);
  }
  onLogOut(): void {
    this.router.navigate(['/welcome']);
  }
}
