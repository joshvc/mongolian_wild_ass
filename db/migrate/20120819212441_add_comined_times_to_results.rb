class AddCominedTimesToResults < ActiveRecord::Migration
  def change
    add_column :results, :chip_time, :integer
    add_column :results, :gun_time, :integer
  end
end
