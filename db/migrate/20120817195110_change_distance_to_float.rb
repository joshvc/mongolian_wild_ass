class ChangeDistanceToFloat < ActiveRecord::Migration
  def up
    change_column :events, :distance, :float
  end

  def down
    change_column :events, :distance, :integer
  end
end
