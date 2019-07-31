require 'rails_helper'

RSpec.describe "Seller", type: :request do
  describe "GET /seller/:seller_id" do
    it "gets seller_path" do
      
      get seller_path
      expect(response).to have_http_status(200)
    end
  end
end
