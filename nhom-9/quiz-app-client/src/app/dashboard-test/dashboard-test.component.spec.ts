import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DashboardTestComponent } from './dashboard-test.component';

describe('DashboardTestComponent', () => {
  let component: DashboardTestComponent;
  let fixture: ComponentFixture<DashboardTestComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DashboardTestComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DashboardTestComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
