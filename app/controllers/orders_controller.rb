class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def starters
    @foods = Food.where(food_type: 'Starters')
    @order = Order.find(params[:order_id])
  end

  def soups
    @foods = Food.where(food_type: 'Soups')
    @order = Order.find(params[:order_id])
  end
  def courses
    @foods = Food.where(food_type: 'Main Courses')
    @order = Order.find(params[:order_id])
  end
  def desserts
    @foods = Food.where(food_type: 'Desserts')
    @order = Order.find(params[:order_id])
  end
  def beverages
    @beverages = Food.where(food_type: 'Beverages')
    @beers = Food.where(food_type: 'Beers')
    @order = Order.find(params[:order_id])
  end

  def show
    if params[:order_id]
      @order = Order.find(params[:order_id])
    else
      @order = Order.find(params[:id])
    end
  end
  def showadmin
    
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

      if @order.save
        redirect_to :action => 'starters', notice: 'Order was successfully created.', order_id: @order.id 
      else
         render :new
      end
  end

  def update
      if @order.update(order_params)
        redirect_to @order, notice: 'Order was successfully updated.' 
      else
        render :edit 
    end
  end

  def destroy
    @order.destroy
     redirect_to orders_url, notice: 'Order was successfully destroyed.' 
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name, :surname, :street, :number, :city, :phone)
    end
    def order_food_params
      params.require(:order_food).permit(:food_name, :order)
    end
end
