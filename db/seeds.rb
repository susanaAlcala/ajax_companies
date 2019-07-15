# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Claim.destroy_all
#Company.destroy_all
#User.destroy_all
#
#
#20.times do
#  Company.create(
#    name: Faker::Company.name
#  )
#end
#
#30.times do
#  User.create(
#    # name: Faker::FunnyName.name,
#    email: Faker::Internet.email,
#    password: 123456
#  )
#end
#
#users = User.all
#companies = Company.all
#
#250.times do
#  Claim.create(
#    content: Faker::Lorem.sentence,
#    user: users.sample,
#    company: companies.sample
#  )
#end

AdminUser.create!(email: 'admin@gmail.com', password: '123123', password_confirmation: '123123') if Rails.env.development?