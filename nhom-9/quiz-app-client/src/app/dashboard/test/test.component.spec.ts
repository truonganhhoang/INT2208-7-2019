import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TestDisplayComponent } from './test.component';

describe('TestComponent', () => {
  let component: TestDisplayComponent;
  let fixture: ComponentFixture<TestDisplayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TestDisplayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TestDisplayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
