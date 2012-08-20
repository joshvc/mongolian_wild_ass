class AddNotesAndPlacementStuffToResults < ActiveRecord::Migration
  def change
    add_column :results, :notes, :text
    add_column :results, :age_place, :integer
    add_column :results, :race_again, :boolean
    add_column :results, :survey, :text
  end
end
