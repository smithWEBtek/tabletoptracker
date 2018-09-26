class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_secure_password
	has_many :matches
	has_many :games, through: :matches
	validates :email, uniqueness: true, case_sensitive: false
	validates_format_of   :email, with: /@/
end
