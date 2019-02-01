class OccurrenceDateController < ApplicationController

  # GET /occurrence_dates
  # GET /occurrence_dates.json
  def index
    @occurrence_dates = OccurrenceDate.all
  end
end
