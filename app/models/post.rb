class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :body, presence: true, length: { minimum: 10 }
end
