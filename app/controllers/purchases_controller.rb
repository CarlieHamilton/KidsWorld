class PurchasesController < ApplicationController
  def new
    @item = Item.find(params[:id])

    Stripe.api_key =  "sk_test_fWxPnsRBz1gfYsM62iINNutV00t4xReAiJ"
    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
    name: @item.title,
    description: @item.description,
    images: checkout_images(@item),
    amount: (@item.price * 100).to_i,
    currency: 'aud',
    quantity: 1,
    }],
    success_url: 'http://localhost:3000/purchases/complete',
    cancel_url: 'http://localhost:3000/purchases/cancel',
    )
  end

  private

  def checkout_images(item)
    if item.photo.attached?
      return [url_for(item.photo)]
    else
      return []
    end
  end
end
