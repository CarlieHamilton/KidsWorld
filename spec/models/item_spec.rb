require 'rails_helper'

RSpec.describe Item, type: :model do
  it "creates a new item" do
    user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    item = Item.create!(seller_id: user.id, title: "test", description: "test", price: 5)
      expect(item.title).to eq("test")
      expect(item.price).to eq(5)
  end
end