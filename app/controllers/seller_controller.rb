class SellerController < ApplicationController

  # for the view that displays a seller's items for sale
  def index
    @user = User.find(params[:seller_id])
    @items = Item.items_from_seller(@user.id)
  end

  # for view that shows items a seller has sold
  def sold
    @items = Item.items_seller_has_sold(current_user)

    # this is to make the user menu work easily
    @user = current_user
  end
end
