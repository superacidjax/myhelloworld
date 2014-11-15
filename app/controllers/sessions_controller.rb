class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(root_path, notice: 'Sign in successful')
    else
      flash.now[:alert] = 'Sign in failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Signed out!')
  end
end