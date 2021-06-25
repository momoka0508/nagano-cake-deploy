class SearchController < ApplicationController
  
  def search
		@model = params[:model]
		@content = params[:content]
		if @model == 'customer'
			@records = Customer.where(['(last_name || first_name) LIKE ? OR first_name LIKE ? OR last_name LIKE ?', '%'+@content+'%', '%'+@content+'%', '%'+@content+'%'])
		else
			@records = Item.where('name LIKE ?', '%'+@content+'%')
		end
  end
end
