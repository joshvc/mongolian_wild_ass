class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :early_price
      t.date :early_date
      t.date :date
      t.integer :regular_price
      t.date :regular_date
      t.integer :late_price
      t.string :tbd_info
      t.string :distance

      t.timestamps
    end
  end
end
