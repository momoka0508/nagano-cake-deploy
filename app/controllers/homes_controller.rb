class HomesController < ApplicationController
  
  def top
    @items = Item.all.order("id DESC")
  end
  
end
