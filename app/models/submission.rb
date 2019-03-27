class Submission < ApplicationRecord
  belongs_to :author
  has_many :reviews
  validates :title, :content, presence: true
  validates :title, length: {maximum: 150}
  validates :content, length: {minimum: 150}
end
