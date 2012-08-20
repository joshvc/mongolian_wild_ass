class AddBetterTimesToResults < ActiveRecord::Migration
  def change
    add_column :results, :gun_mm, :integer
    add_column :results, :gun_ss, :integer
    add_column :results, :chip_mm, :integer
    add_column :results, :chip_ss, :integer
  end
end
