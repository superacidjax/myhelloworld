class CoursesController < ApplicationController

  expose(:courses)
  expose(:course, attributes: :course_params)

  def index
  end

end
