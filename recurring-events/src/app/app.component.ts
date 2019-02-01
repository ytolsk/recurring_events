
import { Component } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { EventService} from "./event.service";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [HttpClient]
})
export class AppComponent {
  title = 'Make an Event';
  events;

  constructor(private http: HttpClient, private eventService: EventService) {
    http.get('http://localhost:3000/events.json')
      .subscribe(res => this.events = res);
  }
}
