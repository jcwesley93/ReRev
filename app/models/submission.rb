class Submission < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :reviews
  validates :title, :content, presence: true
  validates :title, length: {maximum: 150}
  validates :content, length: {minimum: 150}

    def self.most_reviewed 
      most_reviewed = 0 
      most_reviewed_title = ""
      self.all.each do |submission|
        if submission.reviews.count > 0 && submission.reviews.count > most_reviewed
          most_reviewed = submission.reviews.count
          most_reviewed_title = submission.title
         end
      end
      most_reviewed_title
    end

end
