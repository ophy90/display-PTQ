class AddKeyToEvent < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :club, null: false, foreign_key: true
  end
end
