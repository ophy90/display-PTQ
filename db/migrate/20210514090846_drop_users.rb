class DropUsers < ActiveRecord::Migration[6.1]
  def change
    drop_table :users do |t|
      t.string :role
      t.integer :total_shots
      t.string :succesful_shots
      t.timestamps
    end
  end
end
