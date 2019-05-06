import { UserService } from './../_services/user.service';
import { first } from 'rxjs/operators';
import { QuestionService } from './../_services/question.service';
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
  currentIndex = 0;
  length: number;
  quizId: number;
  constructor(
    private titleService: Title,
    private route: ActivatedRoute,
    private questionService: QuestionService,
    private userService: UserService,
    private router: Router
  ) { }

  ngOnInit() {
    this.quizId = parseInt(this.route.snapshot.paramMap.get('id'), 10);
    this.titleService.setTitle('Test ' + (this.quizId + 1 ));
    this.questionService.getQuestionsByQuizId(parseInt(this.route.snapshot.paramMap.get('id'), 10))
      .finally(() => {
        setTimeout(() => this.length = this.questions.length, 100);
        setTimeout(() => this.update(), 300);
      })
      .subscribe(quesitons => this.questions = quesitons);
  }

  changeQuestionTo(i: number): void {
    this.currentIndex = i;
    this.update();
  }
  onClickCheckbox(event: any) {
    const elementId: string = (event.target as Element).id;
    this.map.set(this.questions[this.currentIndex].questionNumber, elementId);
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
    this.questionService.submitAnswer(this.map, this.quizId ).pipe(first())
    .subscribe(
        data => {
            console.log(';');
        },
        error => {
          console.log(';dd');
        });
     this.router.navigate(['/dashboard']);
  }
  update(): void {
    this.selectedQuestion = this.questions[this.currentIndex];
    this.cbElement.forEach((element: ElementRef) => element.nativeElement.checked = false);
  }
  onClickLogo(): void {
    this.router.navigate(['/test']);
  }
  onLogOut(): void {
    this.router.navigate(['/welcome']);
  }
  onQuizNotFound(): void {
    this.router.navigate(['/dashboard']);
  }
}
