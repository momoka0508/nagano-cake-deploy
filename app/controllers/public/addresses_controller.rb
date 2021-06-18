class Public::AddressesController < ApplicationController
  
  def index
    @address = Address.new
    @addresses = Address.where(customer: current_customer)
  end
  
  def create
    @address = Address.new(address_params)
    @address.customer = current_customer
    if @address.save
      redirect_to addresses_path
    else
      @addresses = Address.where(customer: current_customer)
      render :index
    end
  end
  
end
