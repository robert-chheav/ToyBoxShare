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
user_1 = User.create!(email: "test@test.com", password: "123456", username: "rita_")
user_2 = User.create!(email: "test@test1.com", password: "123456", username: "nevea")
user_3 = User.create!(email: "test2@test.com", password: "123456", username: "robert")
user_4 = User.create!(email: "test3@test.com", password: "123456", username: "riru")

puts "Creating toys..."

toy1 = { name: "Bouncer", price: Faker::Number.number(digits: 2), description: "Babybjörn - toy for bouncer baby will forcus on front", location: "Amsterdam", age: "0-6 MONTHS", user_id: user_1.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/b8/b8bb048f-3e1c-4bd0-af16-fbabe5d005ad?rule=ecg_mp_eps$_84"}
toy2 = { name: "Sand and Water table 30 pieces", price: Faker::Number.number(digits: 2), description: "Are you looking for a water table that is guaranteed to provide lots of summer fun? Then this table is really something for you.", location: "Amsterdam", age: '6-12 MONTHS', user_id: user_2.id, image_url: "https://images.marktplaats.com/api/v1/listing-mp-p/images/82/82189347-2ae1-44bf-a66e-9c688059d445?rule=ecg_mp_eps$_84"}
toy3 = { name: "Bambolino Toys Miffy Pull Figure", price: Faker::Number.number(digits: 2), description: "Start by setting up the table, once set up you can pour the water into the various funnels, the water wheels will start turning and the splashing can begin.", location: "Amsterdam", age: '1-3 YEARS', user_id: user_3.id, image_url:"https://mp.images.icas.io/api/v1/a6519ad0/images/1a/1a7bbe5f-46ee-47fb-9897-d643c654cf2a?rule=eps_84"}
toy4 = { name: "Nice Wooden Walker" , price: Faker::Number.number(digits: 2), description: "Nice wooden walker in good condition. From the brand I'm Toy. With tools and turning mechanisms. Also fun to play with." , location: "Amsterdam", age: '3-6 YEARS', user_id: user_1.id, image_url: "https://mp.images.icas.io/api/v1/a6519ad0/images/f9/f94424e4-03f9-47c7-ada6-c5c914284297?rule=eps_84"}
toy5 = { name: "MATTEL MY SCENE BARBIE TEENAGE DOLL", price: Faker::Number.number(digits: 2), description: "I'M Toy Music Center Large.Music center I'M Toy. Wooden music center that contains various musical instruments! Such as xylophone, drum, triangle, etc. Please note that 1 instrument is missing. ", location: "Amsterdam", age: '6-12 YEARS', user_id: user_2.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/72/72d2ccce-ddb6-4215-a108-9339ecff3795?rule=ecg_mp_eps$_84"}
toy6 = { name: "LOL Camper", price: Faker::Number.number(digits: 2), description: "FACES CHANGE EXPRESSIONFACIAL EXPRESSION CHANGESTHE BARBIE WITH DIFFERENT FACIAL EXPRESSIONSWITH BLOUSE, SKIRT AND BARBIE BAG", location: "Amsterdam", age: '6-12 YEARS', user_id: user_1.id, image_url: "https://images.marktplaats.com/api/v1/listing-mp-p/images/42/42a3413f-766c-4e92-a010-364809637b45?rule=ecg_mp_eps$_84"}
toy7 = { name: "Nice wooden construction vehicles from I'm Toy", price: Faker::Number.number(digits: 2), description: "Accessories and 2 dolls included", location: "Amsterdam", age: '6-12 YEARS', user_id: user_3.id, image_url: "https://images.marktplaats.com/api/v1/listing-mp-p/images/b8/b8bb048f-3e1c-4bd0-af16-fbabe5d005ad?rule=ecg_mp_eps$_84"}
toy8 = { name: "Balance bike Cow I'm Toy", price: Faker::Number.number(digits: 2), description: "Nice wooden construction vehicles from I'm Toy", location: "Amsterdam", age: '6-12 YEARS', user_id: user_3.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/57/574c16e1-3deb-48ef-b7ac-5173059921f2?rule=ecg_mp_eps$_84"}
toy9 = { name: "Duplo Lego TOY STORY 3", price: Faker::Number.number(digits: 2), description: "Played with a lot and some user damage", location: "Rotterdam", age: '6-12 YEARS', user_id: user_1.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/46/4601ba97-bde6-4f2b-b796-04b1bb953992?rule=ecg_mp_eps$_84"}
toy10 = { name: "BOX LADDER", price: Faker::Number.number(digits: 2), description:"Everything complete plus extra figure, see photos.Like new plus box.", location: "Amsterdam", age: '6-12 YEARS', user_id: user_4.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/fd/fdffb9b4-c6ed-44f6-8b46-c8d8a3aa8e41?rule=ecg_mp_eps$_84"}
toy11 = { name: "Jan van Haasteren Puzzle", price: Faker::Number.number(digits: 2), description: "Hours of fun with this nice house made of branches and beads." , location: "Amsterdam", age: '6-12 YEARS', user_id: user_1.id, image_url:"https://mp.images.icas.io/api/v1/a6519ad0/images/ee/eed0ec4f-da24-4e6f-bcdf-d7a1d2d57b6b?rule=eps_84"}
toy12 = { name: "House American doll in good condition", price: Faker::Number.number(digits: 2), description: "Beautiful dollhouse with all complete rooms! Every girl's dream! A great gift for Sinterklaas or Christmas ♥️", location: "Amsterdam", age: '6-12 YEARS', user_id: user_1.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/17/17a83562-1caf-445b-8bdf-d63d95cd416d?rule=ecg_mp_eps$_84"}
toy13 = { name: "Toy wooden music center large", price: Faker::Number.number(digits: 2), description:"Jan Van Haasteren 2x1000 piecesRembrandt's Atelier & Cabinet of Curiosities, number 20032. Including posters and photo frame. Complete and from an animal and smoke-free home" , location: "Amsterdam", age: '6-12 YEARS', user_id: user_1.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/77/77f36ba6-dd62-4b06-8ddf-df0043c309c7?rule=ecg_mp_eps$_84"}
toy14 = { name: "Toy wooden music center large", price: Faker::Number.number(digits: 2), description: "My daughter used to play with this all day. ", location: "Amsterdam", age: '6-12 YEARS', user_id: user_3.id, image_url:"https://images.marktplaats.com/api/v1/listing-mp-p/images/7e/7e7c98cd-e782-4c81-931f-b9710b54a7e1?rule=ecg_mp_eps$_84"}



[ toy1, toy2, toy3, toy4, toy5, toy6, toy7, toy8, toy9, toy10, toy11, toy12, toy13, toy14 ].each do |attributes|
  data = Toy.create!(attributes)
  puts "Created #{data.name}"
end
puts "Finished!"
