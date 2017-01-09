class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :categories

  before_action :authenticate_user!

  def categories
    @categories = Category.all
  end

end
