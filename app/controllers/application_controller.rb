class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :categories

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?


  def categories
    @categories = Category.all
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:signup, keys: [:name, :phone])
    devise_parameter_sanitizer.permit(:account_update, keys:[:name, :phone])
  end
end
