class AddEnddateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :enddate, :datetime
  end
end
