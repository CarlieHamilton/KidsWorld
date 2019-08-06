class Item < ApplicationRecord
  belongs_to :seller, class_name: "User"
  has_one :purchase
  has_one_attached :photo
  enum category: [:toys, :books, :clothes, :accessories]
  enum condition: [:used, :brand_new]

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 250 }
  validates :price, numericality: true


  # show all items that have not yet been sold
  # reverse order to show the newest items first
  def self.all_items_unsold
    items = Item.where(sold: false).reverse_order
  end

  # creating a new item
  def self.create_item(current_user,title, description, condition, category, price)
    item = Item.new(seller_id = current_user, title = title, description = description, condition = condition, category = category, price = price)
    item.save
    return item
  end

  # shows the seller's items
  def self.items_from_seller(seller)
    items = Item.where(seller_id: seller, sold: false).reverse_order
  end

  # show a seller's sold items
  def self.items_seller_has_sold(seller)
    items = Item.where(seller_id: seller, sold: true).reverse_order
  end

  # showing the caterory toys
  def self.all_toys
    items = Item.where(category: "toys", sold: false).reverse_order
  end

  # showing the caterory books
  def self.all_books
    items = Item.where(category: "books", sold: false).reverse_order
  end

   # showing the caterory clothes
   def self.all_clothes
    items = Item.where(category: "clothes" ,sold: false).reverse_order
  end

  # showing the caterory accessories
  def self.all_accessories
    items = Item.where(category: "accessories" ,sold: false).reverse_order
  end
end
