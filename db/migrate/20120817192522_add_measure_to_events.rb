class AddMeasureToEvents < ActiveRecord::Migration
  def change
    add_column :events, :measure, :string
  end
end
