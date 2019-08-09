class PurchasesController < ApplicationController

  # shopping cart - gets the item to be purchased and loads stripe information
  def new
    @item = Item.find(params[:id])

    Stripe.api_key =  "sk_test_fWxPnsRBz1gfYsM62iINNutV00t4xReAiJ"
    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
    name: @item.title,
    description: @item.description,
    images: [],
    amount: (@item.price * 100).to_i,
    currency: 'aud',
    quantity: 1,
    }],
    success_url: completed_purchase_url(@item.id),
    cancel_url: root_url,
    )
  end

  # for view after an item is sold
  def complete
    #changes the item to sold
    @item = Item.find(params[:id])
    @item.sold = true
    if @item.save
      flash[:notice] = "You have successfully purchased this item!"

      #creates a new item in the purchases table
      @sold_item = Purchase.new(buyer_id: current_user.id, item_id: @item.id)
      @sold_item.save

    else
       flash[:alert] = @item.errors.full_messages[0]
       redirect_to item_path(@item.id)
    end
  end

  # similar view to the complete, but does not attempt to update the purchases table. 
  def receipt
    @item = Item.find(params[:id])

    # this is for the user menu
    @user = current_user
  end

end
