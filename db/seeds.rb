# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Author.destroy_all
# Review.destroy_all
# Submission.destroy_all
# Genre.destroy_all

###AUTHORS 
john = Author.create(name: "John Doe", email: "john@test.com", pen_name: "John Anon", location: "NYC", password: "password")
jane = Author.create(name: "Jane Doe", email: "jane@test.com", pen_name: "Jane Anon", location: "NYC", password: "password")
jill = Author.create(name: "Jill Doe", email: "jill@test.com", pen_name: "Jill Anon", location: "NYC", password: "password")
james = Author.create(name: "James Doe", email: "james@test.com", pen_name: "James Anon", location: "NYC", password: "password")
jasmine = Author.create(name: "Jasmine Doe", email: "jasmine@test.com", pen_name: "Jasmine Anon", location: "NYC", password: "password")
jacob = Author.create(name: "Jacob Doe", email: "jacob@test.com", pen_name: "Jacob Anon", location: "NYC", password: "password")

#GENRES
fantasy = Genre.create(name:"Fantasy")
crime = Genre.create(name:"Crime & Detective")
horror = Genre.create(name:"Horror")
humor = Genre.create(name:"Humor")
mystery = Genre.create(name:"Mystery")
scifi = Genre.create(name:"Science Fiction")
western = Genre.create(name:"Western")
bio = Genre.create(name:"Biography")
essay = Genre.create(name:"Essay")
journalism = Genre.create(name:"Journalism")
ref = Genre.create(name:"Reference")
help = Genre.create(name:"Self-Help")
poetry = Genre.create(name:"Poetry")
adventure = Genre.create(name:"Adventure")

### SUBMISSIONS
one = Submission.create(title: "Title One ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: john.id, genre_id: fantasy.id)
two = Submission.create(title: "Title Two ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jill.id, genre_id: crime.id)
three = Submission.create(title: "Title Three ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: james.id,genre_id: horror.id)
four = Submission.create(title: "Title Four ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jasmine.id, genre_id: humor.id)
five = Submission.create(title: "Title Five ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jacob.id, genre_id: mystery.id)
six = Submission.create(title: "Title Six ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: john.id, genre_id: scifi.id)
seven = Submission.create(title: "Title Seven", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jill.id, genre_id: western)
eight = Submission.create(title: "Title Eight ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: james.id, genre_id: bio.id)
nine = Submission.create(title: "Title Nine ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jasmine.id, genre_id: essay.id)
ten = Submission.create(title: "Title Ten ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jacob.id, genre_id: journalism.id)
eleven = Submission.create(title: "Title Eleven ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jane.id, genre_id: ref.id)
tweleve = Submission.create(title: "Title Twelve ", content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis pa", author_id: jane.id, genre_id: poetry.id)


### REVIEWS
review_by_jacob = Review.create(comment: "I love this", author_id: jacob.id, submission_id: one.id)
review_by_jasmine = Review.create(comment: "I love this", author_id: jasmine.id, submission_id: two.id)
review_by_james = Review.create(comment: "I love this", author_id: james.id, submission_id: three.id)
review_by_jill = Review.create(comment: "I love this", author_id: jill.id, submission_id: four.id)
review_by_jane = Review.create(comment: "I love this", author_id: jane.id, submission_id: five.id)
review_by_john = Review.create(comment: "I love this", author_id: john.id, submission_id: six.id)


