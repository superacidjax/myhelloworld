class CoursesController < ApplicationController

  expose(:courses)
  expose(:course, attributes: :course_params)

  def index
  end

  def show
    self.course = Course.friendly.find(params[:id])
  end

  def create
    if course.save
      redirect_to courses_path
    else
      render :new
    end
  end

  def edit
    self.course = Course.friendly.find(params[:id])
  end

  def update
    self.course = Course.friendly.find(params[:id])
    if course.update_attributes(course_params)
      redirect_to courses_path
    else
      render :edit
    end
  end

  private

  def course_params
    params.require(:course).permit(:price, :description, :headline, :slug, :name,
      :video_url, :level, :device, :programming_language)
  end

end
