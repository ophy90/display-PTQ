class AddReferenceToSerie < ActiveRecord::Migration[6.1]
  def change
    add_reference :series, :event, null: false, foreign_key: true
  end
end
