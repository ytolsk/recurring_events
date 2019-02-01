class Event < ApplicationRecord
  has_many :occurrence_date
  after_save :create_occurrences

  attribute :name, :string
  attribute :startdate, :datetime
  attribute :enddate, :datetime
  attribute :frequency
  attribute :from_date, :datetime
  attribute  :to_date, :datetime
  attribute :recurring_day, :integer
  attribute :recurring_day_order, :integer

  #get event_length
  def event_length
    (startdate.to_time - enddate.to_time)
  end


  def week_day_of_month(month, weekday, order)
    n = 0
    current_date = month
    while (n < order)
      current_date += 1.days until current_date.wday == weekday
      n+=1
    end
    return current_date
  end

  #create all event occurances
  def create_occurrences
    if (from_date && to_date)
      current_date = from_date
      #this does not include the final date, could change so it does
      while (current_date < to_date)

        occurrence_end = current_date + event_length

        if(current_date.wday == recurring_day) #in case start date is not the right day of week
          occurrence_date.create( {start: current_date, end: occurrence_end})
        end

        case frequency
        when "weekly"
          current_date = current_date + 7.days
          if (recurring_day)
            current_date = current_date.beginning_of_week + recurring_day
          end
        when "monthly" ## need option to select which month month
          current_date = current_date + 1.month
          if(recurring_day && recurring_day_order)
            beginning_of_month= current_date.beginning_of_month
            current_date = week_day_of_month(beginning_of_month, recurring_day, recurring_day_order)
          end
        when "daily"
          current_date = current_date.next_day
        else
          console.log("not a valid frequency")
        end
      end
    end
  end

end
