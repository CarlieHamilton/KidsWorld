# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all


user1 = User.create(email: "aa1@example.com", password: "123testing", password_confirmation: "123testing")
user2 = User.create(email: "aa2@example.com", password: "123testing", password_confirmation: "123testing")
user3 = User.create(email: "aa3@example.com", password: "123testing", password_confirmation: "123testing")
user4 = User.create(email: "aa4@example.com", password: "123testing", password_confirmation: "123testing")
user5 = User.create(email: "aa5@example.com", password: "123testing", password_confirmation: "123testing")

 walker = Item.create(seller_id: user1.id, title: "Baby Walker", description: "blah", condition: :brand_new, category: :toys, sold: false)

escavator = Item.create(seller_id: user1.id, title: "Escavator", description: "blah", condition: :used, category: :toys, sold: false)

escavator2 = Item.create(seller_id: user1.id, title: "Escavator2", description: "blah", condition: :used, category: :toys, sold: true)