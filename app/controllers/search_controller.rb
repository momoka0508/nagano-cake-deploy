class SearchController < ApplicationController
  
  def search
		@model = params[:model]
		@content = params[:content]
		if @model == 'customer'
			@records = Customer.where(['first_name LIKE ? OR last_name LIKE ?', '%'+@content+'%', '%'+@content+'%'])
		else
			@records = Item.where('name LIKE ?', '%'+@content+'%')
		end
  end
end
