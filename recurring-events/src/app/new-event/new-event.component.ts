import { Component, OnInit } from '@angular/core';
import {NewEvent} from '../new-event';

import { EventService } from '../event.service';

@Component({
  selector: 'app-new-event',
  templateUrl: './new-event.component.html',
  styleUrls: ['./new-event.component.css']
})
export class NewEventComponent implements OnInit {

  event: NewEvent = { name: ' try',
    starttime: ' ',
    endtime: ' ',
    fromDate: ' ',
    endDate: '  ',
    frequency: ' '
  };

  showVar: boolean = false;

  constructor(
    private eventService: EventService
  ) {
  }

  ngOnInit() {
  }

  save() {
    this.eventService.save(this.event).subscribe(
      response => console.log(response),
      err => console.log(err)
    );
  }

  toggleChild(){
    this.showVar = !this.showVar;
  }
}
