# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
Review.destroy_all
Submission.destroy_all

john = Author.create(name: "John Doe", email: "john@test.com", pen_name: "John Anon", password: "pw")

review_by_john = Review.create(comment: "I love this", author_id: john.id, submission_id: 1)

submission = Submission.create(title: "Title", content: "Insert content here", author_id: john.id)
 
#######
Genre.create(name:"Fantasy")
Genre.create(name:"Crime & Detective")
Genre.create(name:"Horror")
Genre.create(name:"Humor")
Genre.create(name:"Mystery")
Genre.create(name:"Science Fiction")
Genre.create(name:"Western")
Genre.create(name:"Biography")
Genre.create(name:"Essay")
Genre.create(name:"Journalism")
Genre.create(name:"Reference")
Genre.create(name:"Self-Help")
Genre.create(name:"Poetry")
Genre.create(name:"Adventure")