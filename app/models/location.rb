class Location < ApplicationRecord
    has_many :hikes, dependent: :destroy
    has_many :comments, as: :commentable
end
