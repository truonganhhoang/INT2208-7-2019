import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SideAlertComponent } from './side-alert.component';

describe('SideAlertComponent', () => {
  let component: SideAlertComponent;
  let fixture: ComponentFixture<SideAlertComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SideAlertComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SideAlertComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
