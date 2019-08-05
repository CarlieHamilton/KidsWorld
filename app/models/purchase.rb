class Purchase < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  belongs_to :item


  def self.items_buyer_has_purchased(buyer)
    purchases = Purchase.where(buyer_id: buyer).reverse_order
  end

  def self.purchased_item(item_id)
    purchase = Purchase.where(item_id: item_id)
  end

end
