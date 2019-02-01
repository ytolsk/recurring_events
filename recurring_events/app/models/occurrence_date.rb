class OccurrenceDate < ApplicationRecord
  belongs_to :event

  attribute :start, :datetime
  attribute :end, :datetime


end
