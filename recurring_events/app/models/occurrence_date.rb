class OccurrenceDate < ApplicationRecord
  belongs_to :event

  attribute :start, :date
  attribute :end, :date


end
