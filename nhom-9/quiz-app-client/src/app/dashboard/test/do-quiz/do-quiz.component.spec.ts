import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DoQuizComponent } from './do-quiz.component';

describe('DoQuizComponent', () => {
  let component: DoQuizComponent;
  let fixture: ComponentFixture<DoQuizComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DoQuizComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DoQuizComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
