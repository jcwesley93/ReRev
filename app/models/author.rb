class Author < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :submissions
    has_many :genres, through: :submissions

    validates :name, :email, :pen_name, :location, presence: true
    validates :email, :pen_name, uniqueness: true
    validates :password, presence: true, on: :new
    # validates :password, length: { minimum: 7 }, on: :new
    validates :password, confirmation: true, on: :new

    def self.top_contributor
        top_contributor = nil 
        top_contributor_count = 0 
        self.all.each do |author|
            if author.submissions.count > 0 && author.submissions.count > top_contributor_count
                top_contributor = author
                top_contributor_count = author.submissions.count
            end
        end
        top_contributor
    end

    def self.author_count
        self.all.count 
    end

    def varied_author
        self.genres.uniq.count
    end

    def average_word_count
        total_words= []
        self.submissions.each do |submission|
            total_words << (submission.content.split.count)
        end
        total_words.inject(0, :+) / self.submissions.count
    end










end
