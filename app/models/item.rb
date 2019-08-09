class Item < ApplicationRecord

  # an item belongs to a user, called a seller. An item will only have one purchase, and one photo attached
  belongs_to :seller, class_name: "User"
  has_one :purchase
  has_one_attached :photo

  # enum for category and conditions means that we do not have to do extra validation on these fields
  enum category: [:toys, :books, :clothes, :accessories]
  enum condition: [:used, :brand_new]

  # validation for a new item
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

  # method to show all the items in a particular category
    def self.all_from_category(cat)
    items = Item.where(category: cat, sold: false).reverse_order
  end

end
