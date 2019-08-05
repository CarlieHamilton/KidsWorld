Rails.application.routes.draw do

  get 'buyer/bought'
  #items
  get 'items/', to: "items#index", as: "items"
  post 'items/', to: "items#create"
  get 'items/new', to: "items#new", as: "new_item"
  get 'items/toys', to: "items#toys", as: "toys"
  get 'items/books', to: "items#books", as: "books"
  get 'items/clothes', to: "items#clothes", as: "clothes"
  get 'items/accessories', to: "items#accessories", as: "accessories"
  get 'items/:id/edit', to: "items#edit", as: "edit_item"
  patch "items/:id/", to: "items#update"
  put "items/:id/", to: "items#update"
  get 'items/:id', to: "items#show", as: "item"
  delete "items/:id", to: "items#destroy"



  root to: "homepage#index"
  devise_for :user

  #seller
  get 'seller/:seller_id/sold', to: "seller#sold", as: "sold_items"
  get 'seller/:seller_id', to: "seller#index", as: "seller"

  #buyer
  get 'buyer/:buyer_id', to: "buyer#purchased", as: "purchased_items"

  #purchases
  get 'purchases/new', to: "purchases#new", as: "new_purchase"
  get 'purchases/complete/:id', to: "purchases#complete", as: "completed_purchase"
  get 'purchases/receipt/:id', to: "purchases#receipt", as: "purchase_receipt"

end
