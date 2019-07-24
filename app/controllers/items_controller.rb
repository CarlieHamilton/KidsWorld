class ItemsController < ApplicationController
  def index
   @items = Item.all_items_unsold
  end

  def show

  end

  def new

  end


  def edit
  end

end
