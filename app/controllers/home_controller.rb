class HomeController < ApplicationController
before_filter :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @food = Food.new
    @foods = Food.all
  end


end
