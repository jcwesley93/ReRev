class Genre < ApplicationRecord
    has_many :submissions
    has_many :authors, through: :submissions

    def self.most_submitted 
    most_submitted = nil
    most_submitted_count = 0
    self.all.each do |genre|
        if genre.submissions.count > 0 && genre.submissions.count > most_submitted_count
            most_submitted_count = genre.submissions.count
            most_submitted = genre
        end
    end
    most_submitted
    end

    def submission_count
        self.submissions.count
    end





    
end
