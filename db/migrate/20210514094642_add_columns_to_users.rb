class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string
    add_column :users, :total_shots, :integer
    add_column :users, :successful_shots, :integer
  end
end
