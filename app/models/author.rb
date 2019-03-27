class Author < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :submissions

    validates :name, :email, :pen_name, :password, :location, presence: true
    validates :password, length: { minimum: 7 }
    validates :password, confirmation: true

end
