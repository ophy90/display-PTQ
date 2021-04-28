class AddStuffToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :presence_points, :integer
    add_column :events, :type, :string
    add_column :events, :closed, :boolean
  end
end
