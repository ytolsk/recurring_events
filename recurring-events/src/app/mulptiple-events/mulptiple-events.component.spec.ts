import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MulptipleEventsComponent } from './mulptiple-events.component';

describe('MulptipleEventsComponent', () => {
  let component: MulptipleEventsComponent;
  let fixture: ComponentFixture<MulptipleEventsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MulptipleEventsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MulptipleEventsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
