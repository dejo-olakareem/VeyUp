# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Question.destroy_all
Answer.destroy_all

15.times do |user|
  User.create(name: Faker::Name.name ,email: "#{user}@gmail.com" ,password: "password")
end

user = User.all

15.times do |question|
  Question.create(text: Faker::FamilyGuy.quote, user_id:"#{question}")
end

10.times do |questionid|
  Answer.create(text: Faker::Team.creature,question_id:"#{questionid}", picture: "https://i.pinimg.com/736x/b3/79/05/b37905e3dd6701d93ace1b8afcabc6f7--psychic-readings-couple-pics.jpg")
  Answer.create(text: Faker::Team.creature,question_id:"#{questionid + 1}", picture: "http://sacredunion.com/site/wp-content/uploads/2013/12/couple-sunsetbeach.jpg")
  Answer.create(text: Faker::Team.creature,question_id:"#{questionid + 2}", picture: "https://i.pinimg.com/originals/39/16/f6/3916f60eedee510644f77052fc122788.jpg")
  Answer.create(text: Faker::Team.creature,question_id:"#{questionid + 3}", picture: "https://www.thedsmgroup.com/wp-content/uploads/couple-header1.jpg")
end
