class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :nearest_city
      t.string :location
      t.string :level
      t.integer :length
      t.attachment :main_picture

      t.timestamps
    end
  end
end
