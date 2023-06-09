# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do
  email = Faker::Internet.email
  password = 'password'
  User.create!(email: email, password: password, password_confirmation: password)
end

10.times do
  user_id = rand(1..3)
  name = Faker::Food.dish
  Recipe.create!(user_id: user_id, name: name)
end
