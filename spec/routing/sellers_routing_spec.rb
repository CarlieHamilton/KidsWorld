require "rails_helper"

RSpec.describe SellerController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seller/1").to route_to("seller#index", :seller_id => "1")
    end
  end
end
