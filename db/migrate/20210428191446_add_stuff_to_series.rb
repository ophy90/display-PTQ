class AddStuffToSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :series, :date, :datetime
    add_column :series, :number_of_courts, :integer
    add_column :series, :players_presents, :string
    add_column :series, :duration, :integer
  end
end
