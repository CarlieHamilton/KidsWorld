class Purchase < ApplicationRecord
  belongs_to :buyer, class_name: "User"
  belongs_to :item


  def self.items_buyer_has_purchased(buyer)
    purchases = Purchase.where(buyer_id: buyer).reverse_order
  end

end
