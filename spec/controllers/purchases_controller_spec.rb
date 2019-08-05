require 'rails_helper'

RSpec.describe PurchasesController, type: :controller do

  let(:seller_attributes) {
    { email: "aa1@example.com", password: "123testing1", password_confirmation: "123testing1", username: "alice" }
  }

  let(:valid_attributes) {
    {seller_id: User.first.id, title: "title", description: "description", condition: :brand_new, category: :toys, sold: false, price: 25.00}
  }

  describe "GET #new" do
    it "returns http success" do
      User.create! seller_attributes
      item = Item.create! valid_attributes
      get :new, params: {id: item.to_param}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #complete" do
    it "returns http success" do
      user = User.create! seller_attributes
      sign_in(user)
      item = Item.create! valid_attributes
      get :complete, params: {id: item.to_param}
      expect(response).to have_http_status(:success)
    end
  end

    describe "GET #receipt" do
    it "returns http success" do
      user = User.create! seller_attributes
      sign_in(user)
      item = Item.create! valid_attributes
      get :complete, params: {id: item.to_param}
      expect(response).to have_http_status(:success)
    end
  end

end
