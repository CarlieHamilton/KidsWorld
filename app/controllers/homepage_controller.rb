class HomepageController < ApplicationController
  def index
   @items = Item.all_items_unsold.limit(6)
  end
end
