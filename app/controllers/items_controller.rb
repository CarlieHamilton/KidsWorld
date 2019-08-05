class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def index
    @items = Item.all_items_unsold
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new
    item.seller_id = current_user.id
    item.title = params[:item][:title]
    item.description = params[:item][:description]
    item.condition = params[:condition]
    item.category = params[:category]
    item.price = params[:item][:price]
    item.photo.attach(params[:item][:photo])

    if item.save
        flash[:notice] = "Your item has been saved!"
        redirect_to item_path(item.id)
    else
        flash[:alert] = item.errors.full_messages[0]
        redirect_to new_item_path
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.title = params[:item][:title]
    item.description = params[:item][:description]
    item.condition = params[:condition]
    item.category = params[:category]
    item.price = params[:item][:price]
    if params[:item].has_key? :photo
        item.photo.attach(params[:item][:photo])
    end

    if item.save
        flash[:notice] = "Your item has been saved!"
        redirect_to item_path(item.id)
    else
        flash[:alert] = item.errors.full_messages[0]
        redirect_to edit_item_path
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.seller_id == current_user.id
        Item.where(id: params[:id]).first.destroy
        redirect_to items_path
    else
        flash[:notice] = "You cannot delete this item"
        redirect_to item_path
    end
  end

  def toys
    @items = Item.all_toys
  end

  def books
    @items = Item.all_books
  end

  def clothes
    @items = Item.all_clothes
  end

  def accessories
    @items = Item.all_accessories
  end

end
