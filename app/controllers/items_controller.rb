class ItemsController < ApplicationController

  # user must be authenticated before they can access these pages
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  # items index view displays all unsold items
  # in a future enhancement, would like to have pagination so that not all items are on the one page
  def index
    @items = Item.all_items_unsold
  end

  # show view displays information for a single item
  def show
    @item = Item.find(params[:id])
    if @item.sold
      @purchase = Purchase.purchased_item(params[:id]).first
    end
  end

  # for the view that creates a new item
  def new
    @item = Item.new
  end

  # saving a new item
  def create
    item = Item.new(item_params)
    item.seller_id = current_user.id
    item.condition = params[:condition]
    item.category = params[:category]

    if item.save
        flash[:notice] = "Your item has been saved!"
        redirect_to item_path(item.id)
    else
        flash[:alert] = item.errors.full_messages[0]
        redirect_to new_item_path
    end
  end

  # for edit view, editing an item, finds the correct item to edit
  def edit
    @item = Item.find(params[:id])
  end

  # method for updating an edited item
  def update
    item = Item.find(params[:id])
    item.update_attributes!(item_params)
    item.condition = params[:condition]
    item.category = params[:category]

    # this code no longer needed as item_params works instead, saving for future reference
    # if params[:item].has_key? :photo
    #     item.photo.attach(params[:item][:photo])
    # end

    if item.save
        flash[:notice] = "Your item has been saved!"
        redirect_to item_path(item.id)
    else
        flash[:alert] = item.errors.full_messages[0]
        redirect_to edit_item_path
    end
  end

  # method for deleting an item
  def destroy
    item = Item.find(params[:id])
    if item.seller_id == current_user.id
        Item.where(id: params[:id]).first.destroy
        flash[:notice] = "Your item has been deleted"
        redirect_to items_path
    else
        flash[:alert] = "You cannot delete this item"
        redirect_to item_path
    end
  end

  # for view to display toys category
  def toys
    @items = Item.all_from_category("toys")
  end

  # for view to display books category
  def books
    @items = Item.all_from_category("books")
  end

  # for view to display the clothes category
  def clothes
    @items = Item.all_from_category("clothes")
  end

  # for view to display accessories category.
  def accessories
    @items = Item.all_from_category("accessories")
  end

  private
  # private method for permited perams - makes update and create tidier too
  def item_params
    params.require(:item).permit(:title, :description, :price, :photo)
  end

end
