class User < ApplicationRecord
    has_many :hikes, dependent: :destroy
    has_secure_password
    validates :email, presence: true, uniqueness: true
    after_initialize :set_defaults
    has_many :signups
    has_many :hikings, through: :signups, source: :hikes
    has_many :comments, as: :commentable
    has_attached_file :profile_picture, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
    validates_attachment_content_type :profile_picture, content_type: /\Aimage\/.*\z/

    private
    def user_params
        params.require(:user).permit(:name, :email, :password_digest, )
      end
    def set_defaults
        self.admin = false if self.admin.nil?
    end
end
