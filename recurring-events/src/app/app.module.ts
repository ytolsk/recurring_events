import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule} from '@angular/common/http';
import { AppComponent } from './app.component';
import { CalendarComponent } from './calendar/calendar.component';
import { NewEventComponent } from './new-event/new-event.component';




import { FormsModule } from '@angular/forms';
import { MulptipleEventsComponent } from './mulptiple-events/mulptiple-events.component';
import { EventDatesListComponent } from './event-dates-list/event-dates-list.component';

@NgModule({
  declarations: [
    AppComponent,
    CalendarComponent,
    NewEventComponent,
    MulptipleEventsComponent,
    EventDatesListComponent
  ],
  imports: [
    BrowserModule,
    HttpClientModule,
    AppRoutingModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
