class BuyerController < ApplicationController

  # For the view to see what a user has purchased
  def purchased
    @items = Purchase.items_buyer_has_purchased(current_user)

    # this is to make the user menu work easily
    @user = current_user
  end
end
