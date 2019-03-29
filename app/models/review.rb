class Review < ApplicationRecord
  belongs_to :author
  belongs_to :submission

    def self.total_reviews
      self.all.count
    end

end
