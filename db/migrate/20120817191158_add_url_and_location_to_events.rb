class AddUrlAndLocationToEvents < ActiveRecord::Migration
  def change
    add_column :events, :url, :string
    add_column :events, :location, :string
  end
end
