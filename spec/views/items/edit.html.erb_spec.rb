require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    sign_in(@user)
    @item = assign(:item, Item.create!(seller_id: @user.id, title: "test", description: "test", price: 5))
  end

  it "renders the edit item form" do
    render
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
    end
  end
end
