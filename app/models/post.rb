class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 4..50 }
  validates :user_id, presence: true
end
