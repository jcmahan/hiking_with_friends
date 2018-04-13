class Location < ApplicationRecord
    has_many :hikes, dependent: :destroy
end
