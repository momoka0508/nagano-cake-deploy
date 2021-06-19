class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_cart

  def current_cart
  	if session[:cart_id]
  		@cart_item = CartItem.find(session[:cart_id])
  	else
  		@cart_item = CartItem.create
  		session[:cart_id] = @cart_item.id
  	end
  end
end
