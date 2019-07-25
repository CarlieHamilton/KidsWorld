Rails.application.routes.draw do
  get 'items/', to: "items#index", as: "items"
  get 'items/show'
  get 'items/new'
  get 'items/edit'
  root to: "homepage#index"
  devise_for :users

  # get "items/:id", to: "items#show", as: "show_items"

end
