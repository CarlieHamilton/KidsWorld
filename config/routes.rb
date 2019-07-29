Rails.application.routes.draw do

  #items
  get 'items/', to: "items#index", as: "items"
  
  get 'items/new', to: "items#new", as: "new_item"
  get 'items/:id', to: "items#show", as: "item"
  get 'items/edit/:id', to: "items#edit", as: "edit_item"

  root to: "homepage#index"
  devise_for :user
 
  post 'items', to: "items#create"
  patch "items/edit/:id", to: "items#update"
  
end
