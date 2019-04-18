import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChatlistItemComponent } from './chatlist-item.component';

describe('ChatlistItemComponent', () => {
  let component: ChatlistItemComponent;
  let fixture: ComponentFixture<ChatlistItemComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChatlistItemComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChatlistItemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
