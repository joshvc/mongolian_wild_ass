class AddBonusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :bonus, :boolean
  end
end
