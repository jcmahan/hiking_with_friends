class Hike < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :signups
  has_many :users, through: :signups
end
