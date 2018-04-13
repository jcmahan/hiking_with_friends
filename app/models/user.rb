class User < ApplicationRecord
    has_many :hikes, dependent: :destroy
    has_secure_password
    validates :email, presence: true, uniqueness: true
    after_initialize :set_defaults
    has_many :signups
    has_many :hikings, through: :signups, source: :hikes
    has_many :comments, as: :commentable

    private
    def set_defaults
        self.admin = false if self.admin.nil?
    end
end
