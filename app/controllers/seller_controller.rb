class SellerController < ApplicationController
  def index
    @user = User.find(params[:seller_id])
    @items = Item.items_from_seller(@user.id)
  end
end
