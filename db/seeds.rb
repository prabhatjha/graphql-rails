# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Response.destroy_all
Decline.destroy_all
EndUser.destroy_all


10.times do |index|
  EndUser.create!(email: Faker::Internet.email )
end

p "Created #{EndUser.count} end users"

eu = EndUser.first

Response.create!(end_user_id: eu.id, score: 5,text: "Horrible service")
Response.create!(end_user_id: eu.id, score: 10,text: "Awesome. Can not think of anything else")


Decline.create!(end_user_id: eu.id)
Decline.create!(end_user_id: eu.id)