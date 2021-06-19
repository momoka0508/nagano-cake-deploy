class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_cart

  def current_cart
  	current_cart = current_customer.cart_items
  	current_cart = CartItem.find_by(id: session[:cart_id]) || CartItem.create
  	session[:cart_id] ||= current_cart.id
  end

end