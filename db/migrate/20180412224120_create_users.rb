class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :hometown
      t.string :level
      t.string :profile_picture
      t.string :contact
      t.string :facebook_url
      t.string :instagram_url
      t.boolean :admin

      t.timestamps
    end
  end
end
