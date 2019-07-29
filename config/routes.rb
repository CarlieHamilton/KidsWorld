Rails.application.routes.draw do

  #items
  get 'items/', to: "items#index", as: "items"
  
  get 'items/new', to: "items#new", as: "new_item"
  get 'items/:id', to: "items#show", as: "item"
  get 'items/edit'

  root to: "homepage#index"
  devise_for :users

  post 'items', to: "items#create"

end
