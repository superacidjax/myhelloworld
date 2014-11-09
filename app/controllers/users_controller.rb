class UsersController < ApplicationController

  expose(:user, attributes: :user_params)

  def create
    if user.save
      auto_login(user)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


end
