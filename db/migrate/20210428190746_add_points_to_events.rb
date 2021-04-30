class AddPointsToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :winning_points, :integer
    add_column :events, :loosing_points, :integer
  end
end
