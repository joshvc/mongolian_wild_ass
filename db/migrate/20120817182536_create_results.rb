class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :time
      t.string :place

      t.timestamps
    end
  end
end
