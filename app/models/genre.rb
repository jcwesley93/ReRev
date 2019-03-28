class Genre < ApplicationRecord
    has_many :submissions

    def self.most_submitted 
    most_submitted = 0 
    most_submitted_name = ""
    self.all.each do |genre|
        if genre.submissions.count > 0 && genre.submissions.count > most_submitted
            most_submitted = genre.submissions.count
            most_submitted_name = genre.name
        end
    end
    most_submitted_name
    end


end
