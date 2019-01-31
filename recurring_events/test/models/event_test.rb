require 'test_helper'

class EventTest < ActiveSupport::TestCase


  new_event = { name: "eventTime",
                startdate: DateTime.now,
                enddate: DateTime.now,
                frequency: "weekly",
                from_date: DateTime.now,
                to_date: DateTime.now.next_month

  }

  test "Creating an event" do
    event = Event.new(new_event)
    assert event.name == "eventTime"

  end

  test "create occurrences" do
    event = Event.new(new_event)
    event.save
    event.create_occurrences
    assert event.occurrence_dates.size == 5
  end
 
end
