class AddDateToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :beginning_date, :datetime
    add_column :events, :end_date, :datetime
  end
end
