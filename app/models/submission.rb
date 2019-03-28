class Submission < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :reviews
  validates :title, :content, presence: true
  validates :title, length: {maximum: 150}
  validates :title, uniqueness: true
  validates :content, length: {minimum: 150}

  def review_count
    self.reviews.count  
  end

  def self.most_reviewed_title
  end

end
