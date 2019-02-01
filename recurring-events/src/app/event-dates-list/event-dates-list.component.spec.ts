import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EventDatesListComponent } from './event-dates-list.component';

describe('EventDatesListComponent', () => {
  let component: EventDatesListComponent;
  let fixture: ComponentFixture<EventDatesListComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EventDatesListComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EventDatesListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
