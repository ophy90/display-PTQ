class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :string
    add_column :users, :total_shots, :integer
    add_column :users, :succesful_shots, :string
  end
end
