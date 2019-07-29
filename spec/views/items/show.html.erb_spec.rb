require 'rails_helper'

RSpec.describe "items/show", type: :view do
  before(:each) do
    user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    @item = assign(:item, Item.create!(seller_id: user.id))
  end

  it "renders attributes in <p>" do
    render
  end
end
