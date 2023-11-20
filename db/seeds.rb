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

doll1 = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 1 }
doll2 = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 1 }
doll3 = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 1 }
doll4 = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 1 }
doll5 = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user_id: 1 }

[doll1, doll2, doll3, doll4, doll5].each do |attributes|
  data = Toy.create!(attributes)
  puts "Created #{data.name}"
end
puts "Finished!"
