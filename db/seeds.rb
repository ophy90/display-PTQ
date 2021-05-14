# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts " Destroying clubs"
Club.destroy_all
puts "Clubs destroyed"
puts " Creating 2 clubs..."

Club.create!(name: "Torny Boules")
Club.create!(name: "Farvagny Sharks")

puts "Clubs have been succesfully created!"

puts " Destroying users"
User.destroy_all
puts "Users destroyed"
puts " Creating 2 Users..."

User.create!(email: "ophelie@ophelie.ch", password: "123456", club_id: 1, role: "admin")
User.create!(email: "yoann@yoann.ch", password: "123456", club_id: 2, role: "user")

puts "Users have been succesfully created!"
