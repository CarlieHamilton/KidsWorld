require 'rails_helper'

RSpec.describe "Seller Request", type: :request do
  describe "GET /seller/:seller_id requests" do
      before(:each) do
    user = User.create!(email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice")
    @item = assign(:item, Item.create!(seller_id: user.id))
    sign_in(user)
  end

    it "gets seller_path" do

      get seller_path
      expect(response).to have_http_status(200)
    end
  end
end
