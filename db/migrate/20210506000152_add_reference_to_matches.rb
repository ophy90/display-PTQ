class AddReferenceToMatches < ActiveRecord::Migration[6.1]
  def change
    add_reference :matches, :serie, null: false,  foreign_key: true
  end
end
