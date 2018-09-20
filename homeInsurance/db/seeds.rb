# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

noInsurer = Insurer.create({name: "None", slogan: "I'll keep things safe myself", location: "None"})
noInsurer.save

user1 = User.create({email: "my@test.com", first_name: "my", last_name: "ohmy", insurer_id: 1, postcode: "notapostcode", house_number: 84})
user1.insurer_id = noInsurer.id
user1.save

pen =  Item.create({name: "Pen", description: "Ballpoint, parker", value: 29.99, user_id: 1})
pen.user_id = user1.id
pen.save
