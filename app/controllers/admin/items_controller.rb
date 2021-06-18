class Admin::ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path
    else
      ran
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :image, :type_id, :body, :price, :is_active)
  end
  
end
