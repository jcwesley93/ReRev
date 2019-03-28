class Author < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :submissions

    validates :name, :email, :pen_name, :location, presence: true
    validates :email, :pen_name, uniqueness: true
    validates :password, presence: true, on: :new
    validates :password, length: { minimum: 7 }, on: :new
    validates :password, confirmation: true, on: :new

end
