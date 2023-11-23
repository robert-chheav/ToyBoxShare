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

puts "Creating toys..."

doll = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 4, image_url: nil}
uno = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 4, image_url: nil}
mattress = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 4, image_url: nil}
ball = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 4, image_url: nil}
barbie = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 4, image_url: nil}

[doll, uno, mattress, ball, barbie].each do |attributes|
  data = Toy.create!(attributes)
  puts "Created #{data.name}"
end
puts "Finished!"
