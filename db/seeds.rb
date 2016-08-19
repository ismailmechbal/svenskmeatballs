# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1000.times do
  email = Faker::Internet.email
  password = Faker::Internet.password
  User.create!(email:  email,
               password: password,
               password_confirmation: password)
end

Recipe.delete_all

10000.times do
  name = Faker::Lorem.sentence
  description = Faker::Lorem.paragraph
  cook_time = Faker::Number.between(1, 60)
  prep_time = Faker::Number.between(1, 60)
  ingredient = Faker::Lorem.paragraph
  instruction = Faker::Lorem.paragraph
  image_url = Faker::Placeholdit.image
  user_id = Faker::Number.between(1, 999)
  Recipe.create!(name:  name,
               description: description,
               cook_time: cook_time,
               prep_time: prep_time,
               ingredient: ingredient,
               instruction: instruction,
               image_url: image_url,
               user_id: user_id)
end