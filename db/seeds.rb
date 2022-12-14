# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'hrttps://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

5.times do
  Post.create(author: first_user, title: 'Hello', text: 'This is a post text')
end    

6.times do
  Comment.create(post_id: 1, author_id: 1, text: 'Hi Tom!' )
end
