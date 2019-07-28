Rails.application.routes.draw do

  #items
  get 'items/', to: "items#index", as: "items"
  get 'items/:id', to: "items#show", as: "item"
  get 'items/new'
  get 'items/edit'

  root to: "homepage#index"
  devise_for :users

end
