class Item < ApplicationRecord
  belongs_to :seller, class_name: "User"
  has_one_attached :photo
  enum category: [:toys, :books, :clothes, :accessories]
  enum condition: [:used, :brand_new]

  def self.all_items_unsold
    items = Item.where(sold: false)
  end
end
