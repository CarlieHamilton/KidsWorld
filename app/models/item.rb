class Item < ApplicationRecord
  belongs_to :seller, class_name: "User"
  has_one_attached :photo
  enum category: [:toys, :books, :clothes, :accessories]
  enum condition: [:used, :brand_new]

  # show all items that have not yet been sold
  def self.all_items_unsold
    items = Item.where(sold: false).reverse_order
  end

  def self.create_item(current_user,title, description, condition, category, price)
    item = Item.new(seller_id = current_user, title = title, description = description, condition = condition, category = category, price = price)
    item.save
    return item
  end

  def self.items_from_seller(seller)
    items = Item.where(seller_id: seller)
  end

  def self.all_toys
    items = Item.where(category: "toys")
  end

  def self.all_books
    items = Item.where(category: "books")
  end

  def self.all_accessories
    items = Item.where(category: "accessories")
  end
end
