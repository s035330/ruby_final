class User < ApplicationRecord
  belongs_to :user_group
  has_many :recipes, dependent: :destroy
  has_secure_password

  validates :username, presence: true, uniqueness: true
end
