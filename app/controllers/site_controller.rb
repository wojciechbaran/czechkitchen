class SiteController < ApplicationController
  def index
  end
  def menu
  	@starters = Food.where(food_type: 'Starters')
  	@courses = Food.where(food_type: 'Main Courses')
  	@soups = Food.where(food_type: 'Soups')
  	@desserts = Food.where(food_type: 'Desserts')
  	@beverages = Food.where(food_type: 'Beverages')
  	@beers = Food.where(food_type: 'Beers')
  end
  def adm
  end
  def login
  end
end
