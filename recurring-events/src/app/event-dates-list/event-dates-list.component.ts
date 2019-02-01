import { Component, OnInit } from '@angular/core';
import {Input} from '@angular/core';
@Component({
  selector: 'app-event-dates-list',
  templateUrl: './event-dates-list.component.html',
  styleUrls: ['./event-dates-list.component.css']
})
export class EventDatesListComponent implements OnInit {
  @Input() datesList: any[];

  constructor() { }

  ngOnInit() {
  }

}
