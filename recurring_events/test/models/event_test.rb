require 'test_helper'

class EventTest < ActiveSupport::TestCase


  new_event = { name: "eventTime",
                startdate: DateTime.new(2019, 01, 30),
                enddate: DateTime.new(2019, 01, 30) + 1.hour,
                frequency: "weekly",
                from_date: DateTime.new(2019, 01, 30),
                to_date: DateTime.new(2019, 04, 29),
                recurring_day: 1

  }

  test "Creating an event" do
    event = Event.new(new_event)
    assert event.name == "eventTime"

  end

  test "create occurrences after save" do
    event = Event.new(new_event)
    event.save
    assert event.occurrence_date.size == 12
  end

  test "create occurrences for second mondays" do
    event = Event.new(new_event)
    event.from_date = DateTime.new(2019, 01, 30)
    event.to_date = DateTime.new(2019, 04, 29)
    event.frequency = "monthly"
    event.recurring_day = 1;
    event.recurring_day_order = 2; # should get every second monday of the month
    event.save

    event.occurrence_date.each { |date| print date.start}


    assert event.occurrence_date.size== 3
  end


end
