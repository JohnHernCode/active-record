class User < ApplicationRecord
  has_many :posts, dependent: :destroy 
  has_many :comments, dependent: :destroy 
  validates :username, presence: true, length: { in: 4..20}, uniqueness: true 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i 
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
end
