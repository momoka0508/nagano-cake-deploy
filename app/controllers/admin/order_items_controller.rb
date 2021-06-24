class Admin::OrderItemsController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end


  def update
    @order_item = OrderItem.find(params[:id])
    @order_item.update(order_item_params)
    #どれか一つ製作ステータスが「製作中」になると注文ステータスが「製作中」に自動更新更新
    #全部の製作ステータスが「製作完了」になると注文ステータスが「発送待ち」に自動更新
    #→→ order_itemモデルに記載
    redirect_back(fallback_location: root_path)
  end

  private
  def order_item_params
    params.require(:order_item).permit(:product_status)
  end

end
