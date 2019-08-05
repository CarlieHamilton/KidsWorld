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

#List of toys
walker = Item.create(seller_id: user1.id, title: "Baby Walker", description: "Learn to walk the colourful way", condition: :brand_new, category: :toys, sold: false, price: 25.00)
walker.photo.attach(io: File.open('app/assets/images/toys/1.jpg'), filename: '1.jpg')

excavator = Item.create(seller_id: user2.id, title: "Excavator", description: "Best for the outdoor person", condition: :used, category: :toys, sold: false, price: 3.50)
excavator.photo.attach(io: File.open('app/assets/images/toys/2.jpg'), filename: '2.jpg')

unicorn = Item.create(seller_id: user1.id, title: "Unicorn Squishy", description: "Who wants some sensory comfort?", condition: :brand_new, category: :toys, sold: false, price: 5.65)
unicorn.photo.attach(io: File.open('app/assets/images/toys/3.jpg'), filename: '3.jpg')

duck = Item.create(seller_id: user3.id, title: "Duck", description: "Press me and I can talk", condition: :brand_new, category: :toys, sold: false, price: 8.75)
duck.photo.attach(io: File.open('app/assets/images/toys/4.jpeg'), filename: '4.jpeg')

dog = Item.create(seller_id: user4.id, title: "Soft Toy - Dog", description: "Want some doggy cuddles?", condition: :used, category: :toys, sold: false, price: 10.30)
dog.photo.attach(io: File.open('app/assets/images/toys/5.jpg'), filename: '5.jpg')

tool = Item.create(seller_id: user2.id, title: "Tool Set", description: "Best for the little handyman", condition: :used, category: :toys, sold: false, price: 4.54)
tool.photo.attach(io: File.open('app/assets/images/toys/6.jpg'), filename: '6.jpg')

rings = Item.create(seller_id: user5.id, title: "Stacking Rings", description: "Enforces hand-eye coordination", condition: :brand_new, category: :toys, sold: false, price: 15.50)
rings.photo.attach(io: File.open('app/assets/images/toys/7.jpg'), filename: '7.jpg')

doggy = Item.create(seller_id: user3.id, title: "Dancing Dog", description: "Dance with me!", condition: :used, category: :toys, sold: false, price: 2.50)
doggy.photo.attach(io: File.open('app/assets/images/toys/8.jpg'), filename: '8.jpg')

kitchen = Item.create(seller_id: user5.id, title: "Kitchen Set", description: "Time for some pretend play", condition: :used, category: :toys, sold: false, price: 54.50)
kitchen.photo.attach(io: File.open('app/assets/images/toys/9.jpeg'), filename: '9.jpeg')
# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#List of Books
b1 = Item.create(seller_id: user1.id, title: "Everyone has something to give", description: "Good book", condition: :used, category: :books, sold: false, price: 4.50)
b1.photo.attach(io: File.open('app/assets/images/books/1.jpg'), filename: '1.jpg')

b2 = Item.create(seller_id: user2.id, title: "Jack and the apple tree", description: "Kids will love this", condition: :brand_new, category: :books, sold: false, price: 2.00)
b2.photo.attach(io: File.open('app/assets/images/books/2.jpg'), filename: '2.jpg')

b3 = Item.create(seller_id: user3.id, title: "Speaking English", description: "Helps in increasing the vocabulary", condition: :used, category: :books, sold: false, price: 3.50)
b3.photo.attach(io: File.open('app/assets/images/books/3.jpg'), filename: '3.jpg')

b4 = Item.create(seller_id: user1.id, title: "Princess Kate Meditates", description: "Girl's favourite", condition: :brand_new, category: :books, sold: false, price: 5.65)
b4.photo.attach(io: File.open('app/assets/images/books/4.jpg'), filename: '4.jpg')

b5 = Item.create(seller_id: user3.id, title: "Little Children's book of things to do", description: "Best to engage a child to do things", condition: :brand_new, category: :books, sold: false, price: 2.75)
b5.photo.attach(io: File.open('app/assets/images/books/5.jpg'), filename: '5.jpg')

b6 = Item.create(seller_id: user4.id, title: "Good Enough to eat", description: "Teach your child what is good to eat", condition: :used, category: :books, sold: false, price: 3.30)
b6.photo.attach(io: File.open('app/assets/images/books/6.jpg'), filename: '6.jpg')

b7 = Item.create(seller_id: user2.id, title: "Winnie the pooh", description: "BOne of the best stories", condition: :used, category: :books, sold: false, price: 2.54)
b7.photo.attach(io: File.open('app/assets/images/books/7.jpg'), filename: '7.jpg')

b8 = Item.create(seller_id: user5.id, title: "Waldo and the Desert Island Adventure", description: "Good one for an adventurous little person", condition: :brand_new, category: :books, sold: false, price: 5.50)
b8.photo.attach(io: File.open('app/assets/images/books/8.jpg'), filename: '8.jpg')

b9 = Item.create(seller_id: user3.id, title: "Guess how much I love you", description: "Kids will love this story", condition: :used, category: :books, sold: false, price: 2.50)
b9.photo.attach(io: File.open('app/assets/images/books/9.jpg'), filename: '9.jpg')
# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#List of Accessories

a1 = Item.create(seller_id: user1.id, title: "Baby Bag", description: "Very convenient and useful", condition: :used, category: :accessories, sold: false, price: 4.50)
a1.photo.attach(io: File.open('app/assets/images/accessories/1.jpg'), filename: '1.jpg')

a2 = Item.create(seller_id: user2.id, title: "Portable Sleeping Tent", description: "Sleeping tent to keep away from insects", condition: :brand_new, category: :accessories, sold: false, price: 2.00)
a2.photo.attach(io: File.open('app/assets/images/accessories/2.jpg'), filename: '2.jpg')

a3 = Item.create(seller_id: user3.id, title: "Hair Ties", description: "Pretty roses hair ties", condition: :used, category: :accessories, sold: false, price: 3.50)
a3.photo.attach(io: File.open('app/assets/images/accessories/3.jpg'), filename: '3.jpeg')

a4 = Item.create(seller_id: user1.id, title: "Sleeping mat bundle", description: "Ideal for a new born", condition: :brand_new, category: :accessories, sold: false, price: 5.65)
a4.photo.attach(io: File.open('app/assets/images/accessories/4.jpeg'), filename: '4.jpeg')
# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#List of Clothes

c1 = Item.create(seller_id: user1.id, title: "Frock", description: "Floral print for the little girl - Size 5", condition: :used, category: :clothes, sold: false, price: 4.50)
c1.photo.attach(io: File.open('app/assets/images/clothes/1.jpg'), filename: '1.jpg')

c2 = Item.create(seller_id: user2.id, title: "Frock", description: "One sleeve frock with headband - Size 3", condition: :brand_new, category: :clothes, sold: false, price: 2.00)
c2.photo.attach(io: File.open('app/assets/images/clothes/2.jpg'), filename: '2.jpg')

c3 = Item.create(seller_id: user3.id, title: "Shirt", description: "Denim Shirt - Size 4", condition: :used, category: :clothes, sold: false, price: 3.50)
c3.photo.attach(io: File.open('app/assets/images/clothes/3.jpg'), filename: '3.jpg')

c4 = Item.create(seller_id: user1.id, title: "Jeans", description: "Size 4", condition: :brand_new, category: :clothes, sold: false, price: 5.65)
c4.photo.attach(io: File.open('app/assets/images/clothes/4.jpg'), filename: '4.jpg')
