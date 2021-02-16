class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { in: 4..50 }
  validates :body, presence: true, length: { maximum: 12_000 }
  validates :user_id, presence: true
end
