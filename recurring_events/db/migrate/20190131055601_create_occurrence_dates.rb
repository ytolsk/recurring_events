class CreateOccurrenceDates < ActiveRecord::Migration[5.2]
  def change
    create_table :occurrence_dates do |t|
      t.datetime :from_date
      t.datetime :to_date
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
