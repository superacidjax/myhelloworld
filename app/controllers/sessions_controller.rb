class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      flash[:success] = 'Sign in successful'
      redirect_back_or_to(root_path)
    else
      flash.now[:alert] = 'It appears that your sign in was incorrect. Please try again!'
      render action: 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'Signed out! See you next time!'
    redirect_to(root_path)
  end
end