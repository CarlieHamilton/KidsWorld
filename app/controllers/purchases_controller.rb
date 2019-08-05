class PurchasesController < ApplicationController
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

  def complete
    #changes the item to sold
    @item = Item.find(params[:id])
    @item.sold = true
    @item.save

    #creates a new item in the purchases table
    @sold_item = Purchase.new(buyer_id: current_user.id, item_id: @item.id)
    @sold_item.save
  end

  def receipt
    @item = Item.find(params[:id])

    # this is for the user menu
    @user = current_user
  end

end
