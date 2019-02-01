require 'test_helper'

class OccurrenceDateTest < ActiveSupport::TestCase
  test "the truth" do
    date = DateTime.new(1990,2,3)
    attributes = {
        event_id: 1,
        start: date,
        end: date + 2.hours
    }
     occurrence = OccurrenceDate.new(attributes)

    assert occurrence.start == date
  end
end
