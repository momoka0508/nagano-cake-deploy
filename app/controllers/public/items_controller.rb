class Public::ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @cart_item=CartItem.new
  end

end
