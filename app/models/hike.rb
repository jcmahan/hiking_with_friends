class Hike < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_many :signups, dependent: :destroy
  has_many :users, through: :signups, dependent: :destroy
end
