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
  	current_cart = current_customer.cart_items
  	current_cart = CartItem.find_by(id: session[:cart_id]) || CartItem.create
  	session[:cart_id] ||= current_cart.id
  end

end