class UsersController < ApplicationController

  expose(:user, attributes: :user_params)
  expose(:course) { Course.find(session[:course]) }

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
      lesson = course.lessons.first
      redirect_to course_lesson_path(course, lesson)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation,
      :display_name)
  end


end
