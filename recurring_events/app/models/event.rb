class Event < ApplicationRecord
  has_many :occurrence_dates
  attribute :name, :string
  attribute :startdate, :datetime
  attribute :enddate, :datetime
  attribute :frequency
  attribute :from_date, :datetime
  attribute  :to_date, :datetime
  attribute :recurring_day

  #get event_length
  def event_length
    (startdate.to_time - enddate.to_time)
  end

  #create all event occurances
  def create_occurrences
    current_date = from_date
    while (current_date < to_date)
      print "current date is "+ current_date.to_s
      occurrence_end = current_date + event_length
      occurrence_dates.create( {start: current_date, end: occurrence_end})
      case frequency
      when "weekly"
        current_date = current_date.next_week
      when "monthly"
        current_date = current_date + 1.month
      when "daily"
        current_date = current_date.next_day
      else
        console.log("not a valid frequency")
      end
    end

  end

end
