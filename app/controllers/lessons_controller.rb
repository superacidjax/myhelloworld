class LessonsController < ApplicationController

  expose(:lesson, attributes: :lesson_params)
  expose(:course) { Course.friendly.find(params[:course_id]) }
  expose(:completions) { current_user.completions}
  expose(:user)

  before_action :require_login, except: :index
  before_action :require_admin, except: [:show, :index, :user_completed]
  before_action :require_active_subscription, only: :show

  layout "lesson"

  def show
    self.course = Course.friendly.find(params[:course_id])
    commontator_thread_show(lesson)
  end

  def index
    self.course = Course.friendly.find(params[:course_id])
  end

  def update
    self.course = Course.friendly.find(params[:course_id])
    if lesson.update_attributes(lesson_params)
      redirect_to course_lessons_path(course)
    else
      render :edit
    end
  end

  def create
    self.course = Course.friendly.find(params[:course_id])
    lesson.course = course
    if lesson.save
      redirect_to course_lessons_path(course)
    else
      render :new
    end
  end

  def user_completed
    if user_completion = Completion.where(user_id: current_user.id,
      lesson_id: params[:lesson_id]).last
      user_completion.destroy
    else
      Completion.create!(user_id: current_user.id, lesson_id: params[:lesson_id],
        completed: true, course_id: params[:course_id])
    end
  end

  def require_active_subscription
    unless session[:course_access] = course.id
      redirect_to new_charge_path(course_id: course.id) unless Charge.where(
        "access_expiration_date > ? AND user_id = ? AND course_id = ?", Date.today.to_s,
        current_user.id, course.id).present?
      session[:course_access] = course.id
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :notes, :video_url,
      :free, :duration, :lesson_number)
  end

end
