# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "clearing db data..."
Category.destroy_all
User.destroy_all
Note.destroy_all


puts "we creating them Category"
school = Category.create(name: "School")
shop = Category.create(name: "Shopping")
workout = Category.create(name: "Workout")

puts "we getting them Users"
john = User.create(name: "Johndhee")
diana = User.create(name: "Diana")
kyle = User.create(name: "Kyle")

puts "sample"
d = Note.create(name:"coffee", description:"something", user_id:kyle.id, category_id:shop.id)
f = Note.create(name:"test", description:"testing", user_id:diana.id, category_id:shop.id)


puts "done with seeding boss!"
