class AddReferencesToComment < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :user, polymorphic: true
    add_reference :comments, :photo, polymorphic: true
    add_reference :comments, :location, polymorphic: true
  end
end
