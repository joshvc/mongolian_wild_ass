class ChangeDistanceToInteger < ActiveRecord::Migration
  def up
    remove_column :events, :distance
    add_column :events, :distance, :integer
  end

  def down
    change_column :events, :distance, :string
  end
end
