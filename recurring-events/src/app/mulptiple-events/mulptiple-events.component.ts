import { Component, OnInit } from '@angular/core';
import {Input} from '@angular/core';


@Component({
  selector: 'app-mulptiple-events',
  templateUrl: './mulptiple-events.component.html',
  styleUrls: ['./mulptiple-events.component.css']
})
export class MulptipleEventsComponent implements OnInit {
  frequencies = [
    {viewValue: 'daily', value: 'daily'},
    {viewValue: 'weekly', value: 'weekly'},
    {viewValue: 'monthly', value: 'monthly'}
  ]
  @Input() showMePartially: boolean;
  constructor() { }

  ngOnInit() {
  }

}
