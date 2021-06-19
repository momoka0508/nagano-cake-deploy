class Admin::TypesController < ApplicationController
  def index
    @type = Type.new
    @types = Type.all
  end

  def edit
  end

  def create
    @type = Type.new(type_params)
    @type.save
    redirect_to admin_types_path
  end
  
  private
  def type_params
    params.require(:type).permit(:name)
  end
  
end
