class AddFieldsToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :court_number, :integer
    add_column :matches, :score_firstteam, :integer
    add_column :matches, :score_secondteam, :integer
    add_column :matches, :player1, :integer
    add_column :matches, :player2, :integer
    add_column :matches, :player3, :integer
    add_column :matches, :player4, :integer
    add_column :matches, :player5, :integer
    add_column :matches, :player6, :integer
  end
end
