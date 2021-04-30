class AddDrawToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :draw_points, :integer
  end
end
