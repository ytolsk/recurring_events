# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Event.create!([
                 { name: 'Copying and Pasting from Stack Overflow'
                 },
                 { name: 'Trying Stuff Until it Works' }
             ])

OccurrenceDate.create!(
                  [
                      {event_id: 1,
                       start: DateTime.now(),
                       end: DateTime.now() + 1.hour
                      }
                  ]
)