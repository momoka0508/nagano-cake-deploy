class Public::CustomersController < ApplicationController

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customers_params)
      redirect_to my_page_customers_path
    else
      render :edit
    end
  end

  private

  def customers_params
    params.require(:customer).permit(
      :first_name, :last_name, :first_name_kana, :last_name_kana, :zip_code, :address, :phone_number, :email)
  end

end
