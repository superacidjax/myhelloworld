class UsersController < ApplicationController

  expose(:user, attributes: :user_params)
  expose(:course) { Course.find(session[:course]) }
  expose(:users) { User.all.order("created_at DESC")}

  before_action :the_right_user, only: [:destroy, :show, :update, :edit]

  def index
  end

  def new
    session[:course] = params[:course]
  end

  def edit
  end

  def update
    user.password_confirmation = user.password
    if user.save
      flash[:success] = 'You have updated yourself successfully!'
    else
      render :edit
    end
  end

  def create
    user.password_confirmation = user.password
    if user.save
      auto_login(user)
      flash[:success] = 'Welcome! You are now signed up. '
      lesson = course.lessons.first
      redirect_to course_lesson_path(course, lesson)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
      :display_name)
  end

  def the_right_user
    redirect_to root_path unless current_user == user || curent_user.admin?
  end


end
