require 'rails_helper'

RSpec.describe "sellers/index", type: :view do
  before(:each) do
    assign(:sellers, [
      Seller.create!(
        :index => "Index"
      ),
      Seller.create!(
        :index => "Index"
      )
    ])
  end

  it "renders a list of sellers" do
    render
    assert_select "tr>td", :text => "Index".to_s, :count => 2
  end
end
