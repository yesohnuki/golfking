class UsersController < ApplicationController
  def show
    @user =　User.find(params[:id])
    @golfclubs = @user.golfclubs
  end

  def edit
  end
end
