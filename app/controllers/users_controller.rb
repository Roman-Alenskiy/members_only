class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    if @user.save 
      flash[:success] = "User successfully created"
      log_in @user
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  # Private methods
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
