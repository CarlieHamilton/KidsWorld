require 'rails_helper'

RSpec.describe Purchase, type: :model do
  it "creates a new purchased item" do
    seller = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    buyer = User.create!(email: "ba1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "bob")
    item = Item.create!(seller_id: seller.id, title: "test", description: "test", price: 5)
    purchase = Purchase.create!(buyer_id: buyer.id, item_id: item.id)
    expect(purchase.buyer.username).to eq("bob")
    expect(purchase.item.title).to eq("test")
  end
end
