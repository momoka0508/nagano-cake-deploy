class Admin::TypesController < ApplicationController
  def index
    @type = Type.new
    @types = Item.page(params[:page]).per(8)
  end

  def edit
    @type = Type.find(params[:id])
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      flash[:notice] = "ジャンルを作成しました"
      redirect_to admin_types_path
    else
      @types = Type.all
      render :index
    end
  end
  
  def update
    @type = Type.find(params[:id])
    @type.update(type_params)
    flash[:notice] = "ジャンルを編集しました"
    redirect_to admin_types_path
  end
  
  
  private
  
  def type_params
    params.require(:type).permit(:name)
  end
  
end
