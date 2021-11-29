# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

# Primary user
User.create!(
  id: 1,
  name: "Example User",
  email: "user@example.com",
  password: "123456",
  password_confirmation: "123456"
)

# Articles for primary user
# (1..20).each do |id|
#   Article.create!(
#     id: id,
#     title: Faker::Book.unique.title,
#     body: Faker::Lorem.paragraph(sentence_count: 8),
#     user_id: User.first.id
#   )
# end

# Generate a bunch of users
10.times do |n|
  name = Faker::Name.unique.name
  email = "example-#{n + 1}@example.com"
  password = "password"
  User.create!(
    name: name,
    email: email,
    password: password,
    password_confirmation: password
  )
end

# Generate microposts for a subset of users.
users = User.order(:created_at).take(6)
10.times do
  body = Faker::Lorem.sentence(word_count: 5)
  title = Faker::Book.unique.title
  users.each { |user| user.articles.create!(title: title, body: body) }
end
