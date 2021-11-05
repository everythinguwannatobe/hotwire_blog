# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

User.create!(
  id: 1,
  first_name: "Chuck",
  last_name: "Smith",
  email: "user@example.com",
  password: "123456",
  password_confirmation: "123456"
)

(1..30).each do |id|
  Article.create!(
    id: id,
    title: Faker::Book.unique.title,
    body: Faker::Lorem.paragraph(sentence_count: 8),
    user_id: User.first.id
  )
end

