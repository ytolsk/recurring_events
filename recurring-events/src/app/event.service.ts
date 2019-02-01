import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import {NewEvent} from './new-event';


const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
  })};
@Injectable({
  providedIn: 'root'
})




export class EventService {
  constructor(private http: HttpClient) { }
  save(event: NewEvent) {
    console.log("in the service");
    console.log(event);
    const body = JSON.stringify(event)
    return this.http.post<NewEvent>('http://localhost:3000/events.json', body, httpOptions).pipe();
  }



}
