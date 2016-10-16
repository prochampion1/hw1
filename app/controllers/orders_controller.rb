class OrdersController < ApplicationController
  def new
    @fooditem = Fooditem.find params[:fooditem_id]
  end 

  def create
    @fooditem = Fooditem.find params[:fooditem_id]
    @order = Order.new(order_params)
    @order.fooditem = @fooditem

    if @order.save
      flash[:success] = "Order submitted. Thank you!"
      redirect_to menu_path
    else
      flash[:error] = "Error: #{@order.errors.full_messages.to_sentence}"
      render 'new'
    end
  end


   private
    def order_params
      params.require(:order).permit(:name, :phone, :address)
    end
end