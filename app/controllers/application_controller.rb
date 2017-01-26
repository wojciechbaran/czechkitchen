class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :get_user

  def get_user
    @current_user = session[:current_user]
  end
end
