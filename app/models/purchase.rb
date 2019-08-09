class Purchase < ApplicationRecord

  # a purchase has one user, defined as a buyer. It also belongs to one item, as an item can only be purchased once
  belongs_to :buyer, class_name: "User"
  belongs_to :item


  # gets all items purchased by a buyer, sorted newest first
  def self.items_buyer_has_purchased(buyer)
    purchases = Purchase.where(buyer_id: buyer).reverse_order
  end

  # gets the information of a purchased item
  def self.purchased_item(item_id)
    purchase = Purchase.where(item_id: item_id)
  end

end