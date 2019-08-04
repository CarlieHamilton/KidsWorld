require 'rails_helper'

RSpec.describe BuyerController, type: :controller do

  describe "GET #bought" do
    it "returns http success" do
      get :bought
      expect(response).to have_http_status(:success)
    end
  end

end
