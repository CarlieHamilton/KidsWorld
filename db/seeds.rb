# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
User.destroy_all


user1 = User.create(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
user2 = User.create(email: "aa2@example.com", password: "123testing2", password_confirmation: "123testing2", username: "bob")
user3 = User.create(email: "aa3@example.com", password: "123testing3", password_confirmation: "123testing3", username: "alfred")
user4 = User.create(email: "aa4@example.com", password: "123testing4", password_confirmation: "123testing4", username: "saladpizza")
user5 = User.create(email: "aa5@example.com", password: "123testing5", password_confirmation: "123testing5", username: "alphabet_sausage")

walker = Item.create(seller_id: user1.id, title: "Baby Walker", description: "Learn to walk the colourful way", condition: :brand_new, category: :toys, sold: false, price: 25.00)
walker.photo.attach(io: File.open('app/assets/images/1.jpg'), filename: '1.jpg')

excavator = Item.create(seller_id: user2.id, title: "Excavator", description: "Best for the outdoor person", condition: :used, category: :toys, sold: false, price: 3.50)
excavator.photo.attach(io: File.open('app/assets/images/2.jpg'), filename: '2.jpg')

unicorn = Item.create(seller_id: user1.id, title: "Unicorn Squishy", description: "Who wants some sensory comfort?", condition: :brand_new, category: :toys, sold: false, price: 5.65)
unicorn.photo.attach(io: File.open('app/assets/images/3.jpg'), filename: '3.jpg')

duck = Item.create(seller_id: user3.id, title: "Duck", description: "Press me and I can talk", condition: :brand_new, category: :toys, sold: false, price: 8.75)
duck.photo.attach(io: File.open('app/assets/images/4.jpeg'), filename: '4.jpeg')

dog = Item.create(seller_id: user4.id, title: "Soft Toy - Dog", description: "Want some doggy cuddles?", condition: :used, category: :toys, sold: false, price: 10.30)
dog.photo.attach(io: File.open('app/assets/images/5.jpg'), filename: '5.jpg')

tool = Item.create(seller_id: user2.id, title: "Tool Set", description: "Best for the little handyman", condition: :used, category: :toys, sold: false, price: 4.54)
tool.photo.attach(io: File.open('app/assets/images/6.jpg'), filename: '6.jpg')

rings = Item.create(seller_id: user5.id, title: "Stacking Rings", description: "Enforces hand-eye coordination", condition: :brand_new, category: :toys, sold: false, price: 15.50)
rings.photo.attach(io: File.open('app/assets/images/7.jpg'), filename: '7.jpg')

doggy = Item.create(seller_id: user3.id, title: "Dancing Dog", description: "Dance with me!", condition: :used, category: :toys, sold: false, price: 2.50)
doggy.photo.attach(io: File.open('app/assets/images/8.jpg'), filename: '8.jpg')

kitchen = Item.create(seller_id: user5.id, title: "Kitchen Set", description: "Time for some pretend play", condition: :used, category: :toys, sold: false, price: 54.50)
kitchen.photo.attach(io: File.open('app/assets/images/9.jpeg'), filename: '9.jpeg')


