require 'rails_helper'


RSpec.describe "items/index", type: :view do
  before(:each) do
    user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    assign(:items, [
      Item.create!(seller_id: user.id),
      Item.create!(seller_id: user.id)
    ])
  end

  it "renders a list of items" do
    render
  end
end
