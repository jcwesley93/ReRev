class Submission < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :reviews
  validates :title, :content, presence: true
  validates :title, length: {maximum: 150}
  validates :title, uniqueness: true
  validates :content, length: {minimum: 150}

  # def self.most_submitted
  #   most_submitted = 0
  #   most_submitted_name = ""
  #   self.all.each do |genre|
  #     if genre.submissions.count > 0 && genre.submissions.count > most_submitted
  #       most_submitted = genre.submissions.count
  #       most_submitted_name = genre.name
  #     end
  #   end
  #   most_submitted_name
  # end

  def review_count
    self.reviews.count
  end

  def self.most_reviewed_title
    most_reviews = 0
    most_reviewed_title = nil
    self.all.each do |submission|
      if submission.review_count > 0 && submission.review_count > most_reviews
        most_reviews = submission.review_count
        most_reviewed_title = submission.title
      end
    end
    most_reviewed_title
  end

end
