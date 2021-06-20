class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_cart

  def after_sign_in_path_for(resource)
    case resource
    when Customer
      items_path
    when Admin
      admin_item_path
    end
  end

  def current_cart
  	if session[:cart_id]
  		@cart = Cart.find(session[:cart_id])
  	else
  		@cart = Cart.create
  		session[:cart_id] = @cart.id
  	end
  end
end
