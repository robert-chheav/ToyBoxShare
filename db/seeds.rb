# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning database..."
Toy.destroy_all
User.destroy_all
user_1 = User.create!(email: "test@test.com", password: "123456", username: "Toto")
user_2 = User.create!(email: "test@test1.com", password: "123456", username: "Toto1")
user_3 = User.create!(email: "test2@test.com", password: "123456", username: "Toto2")

puts "Creating toys..."

doll = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: "0-6 MONTHS", user_id: user_1.id, image_url: nil}
uno = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: '6-12 MONTHS', user_id: user_2.id, image_url: nil}
mattress = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: '1-3 YEARS', user_id: user_3.id, image_url: nil}
ball = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: '3-6 YEARS', user_id: user_1.id, image_url: nil}
barbie = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: '6-12 YEARS', user_id: user_1.id, image_url: nil}


[doll, uno, mattress, ball, barbie].each do |attributes|
  data = Toy.create!(attributes)
  puts "Created #{data.name}"
end
puts "Finished!"
