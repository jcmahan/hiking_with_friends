class Location < ApplicationRecord
    has_many :hikes, dependent: :destroy
    has_attached_file :main_picture, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :main_picture, content_type: /\Aimage\/.*\z/
end
