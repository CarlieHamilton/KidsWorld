class SellerController < ApplicationController
  def index
    @user = User.find(params[:seller_id])
    @items = Item.items_from_seller(@user.id)
  end

  def sold
    @items = Item.items_seller_has_sold(current_user)
  end
end
