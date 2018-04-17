class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :state
      t.string :location_name
      t.string :location_address
      t.string :nearest_city
      t.string :google_map_link
      t.string :level
      t.string :length
      t.attachment :main_picture

      t.timestamps
    end
  end
end
