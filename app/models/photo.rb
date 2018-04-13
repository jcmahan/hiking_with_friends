class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :comments, as: :commentable
end
