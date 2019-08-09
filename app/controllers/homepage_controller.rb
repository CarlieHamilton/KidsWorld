class HomepageController < ApplicationController

  # root page for the website, shows the six most recent items for sale
  def index
   @items = Item.all_items_unsold.limit(6)
  end
end
