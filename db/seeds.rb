# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do
# 	User.create([{
# 		name: Faker::Name.name, 
# 		email: Faker::Internet.email,
# 		}])
# end

50.times do |index|
  User.create!(
  	name: Faker::Name.name,
  	surname: Faker::Name.name,
  	username: Faker::Name.name,
  	avatar: Faker::Avatar.image,
    email: Faker::Internet.email,
    password: Faker::Number.number(10)
                       )
end
