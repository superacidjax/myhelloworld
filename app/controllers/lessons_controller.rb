class LessonsController < ApplicationController

  expose(:lesson, attributes: :lesson_params)
  expose(:course) { Course.friendly.find(params[:course_id]) }
  expose(:completion)
  expose(:completions) { current_user.completions}

  layout "lesson"

  def show
    self.completion = Completion.where(user_id: current_user.id,
      lesson_id: lesson.id).last
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
    self.course = Course.where(lesson: lesson)
    if user_completion = Completion.find_by_user_id(current_user.id)
      user_completion.toggle!(:completed)
    else
      user_completion = Completion.create(user_id: current_user.id,
        lesson_id: params[:lesson_id], completed: true)
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :description, :notes, :video_url,
      :free, :duration)
  end

end
