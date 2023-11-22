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

doll = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user: User.all.sample, image_url: 'https://t3.ftcdn.net/jpg/00/28/78/32/360_F_28783272_McJzgAYLurO4wEnWAfwDDq9a9RpXRofe.jpg'}
uno = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user: User.all.sample, image_url: 'https://target.scene7.com/is/image/Target/GUEST_ec4a92fe-57d2-4387-a897-f3aa75b7842a?wid=488&hei=488&fmt=pjpeg'}
mattress = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user: User.all.sample, image_url: 'https://cdn.mamaloes.nl/catalog/product/600/600/b/o/bondigo_adventure_forest_speelkleed_bp2014_1.jpg'}
ball = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user: User.all.sample, image_url: 'https://goroller.com.br/cdn/shop/products/bolaMareFutball_1024x1024.jpg?v=1668173864'}
barbie = { name: Faker::Name.name, price: Faker::Number.number(digits: 2), description: Faker::Lorem.sentence(word_count: 3), location: "Amsterdam", age: Faker::Number.number(digits: 1), user: User.all.sample, image_url: 'https://www.wibra.nl/wp-content/uploads/sites/3/2022/07/05580020-000-01.png'}

[doll, uno, mattress, ball, barbie].each do |attributes|
  data = Toy.create!(attributes)
  puts "Created #{data.name}"
end
puts "Finished!"
