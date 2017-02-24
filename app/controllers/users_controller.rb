class UsersController < ApplicationController
  before_filter :authenticate_user!

  def create
    @user = User.create( user_params )
  end
  def show
  end


  private

  def user_params
    params.require(:user).permit(:avatar)
  end
end
