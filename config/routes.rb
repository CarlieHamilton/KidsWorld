Rails.application.routes.draw do

  #items
  get 'items/', to: "items#index", as: "items"
  post 'items/', to: "items#create"
  get 'items/new', to: "items#new", as: "new_item"
  get 'items/:id/edit', to: "items#edit", as: "edit_item"
  patch "items/:id/edit", to: "items#update"
  put "items/:id/edit", to: "items#update"
  get 'items/:id', to: "items#show", as: "item"
  delete "items/:id", to: "items#destroy"

  root to: "homepage#index"
  devise_for :user


end
