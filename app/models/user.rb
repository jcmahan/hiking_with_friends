class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    after_initialize :set_defaults
    has_many :created_hikes, foreign_key: "user_id", class_name: "Hike", dependent: :destroy
    has_many :signups, dependent: :destroy
    has_many :hikes, through: :signups, dependent: :destroy
    has_attached_file :profile_picture, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\z/

    private
    def set_defaults
        self.admin = false if self.admin.nil?
    end
end
