class AddTentativeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tentative, :boolean
  end
end
