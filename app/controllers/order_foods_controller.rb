class OrderFoodsController < ApplicationController
	def create
    @order = Order.find(params[:order_id])
    if params[:order_food][:food_name]!='skip'
    	@order_food = @order.order_food.create(order_food_params)
    end
    if params[:order_food][:nextpage]=='show'
    	redirect_to @order
    else
    	redirect_to controller: 'orders', action: params[:order_food][:nextpage], order_id: @order.id, y: params[:order_food][:food_name]
    end
  end
 
  private
    def order_food_params
      params.require(:order_food).permit(:food_name, :amount)
    end
end
