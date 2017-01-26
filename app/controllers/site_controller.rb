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
    if !@current_user.present? 
      redirect_to controller: 'site', action: 'login', notice: 'You must by log-in!' 
    end
  end
  def login
  end
  def confirm
    #require 'digest/sha1'
    password = Digest::SHA1.hexdigest(params[:password])
    @admin = Admin.where(login: params[:login]).try(:first)
    if @admin.present? 
      if @admin.encrypted_password == password
        session[:current_user] = @admin
        redirect_to controller: 'site', action: 'adm'
      else
        redirect_to controller: 'site', action: 'login', notice: 'Wrong password or login!' 
      end
    else
      redirect_to controller: 'site', action: 'login', notice: 'Wrong password or login!' 
    end
  end
end
