class AddStartdateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :startdate, :datetime
  end
end
