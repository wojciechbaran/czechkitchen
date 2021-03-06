class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def edit
  end

  def create
    @food = Food.new(food_params)
      if @food.save
       redirect_to @food, notice: 'Food was successfully created.' 
      else
       render :new 
      end
  end

  def update
    
      if @food.update(food_params)
         redirect_to @food, notice: 'Food was successfully updated.' 
      else
        render :edit 
      end
  end

  def destroy
    @food.destroy
     redirect_to foods_url, notice: 'Food was successfully destroyed.' 
  end

  private
    def set_food
      @food = Food.find(params[:id])
    end

    def food_params
      params.require(:food).permit(:name, :food_type, :price)
    end
end
