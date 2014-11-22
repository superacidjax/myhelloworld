module CoursesHelper

  def course_progress
    count = course.completions.where(user_id: current_user.id,
      course_id: course.id).count
    count = count + 0.00
    percentage_complete = number_with_precision(
      (count / course.lessons.count) * 100.00, precision: 0)
    @percentage = "#{percentage_complete}%"
  end

  def current_course_customer?(course)
    if current_user
      Charge.where(
        "access_expiration_date > ? AND user_id = ? AND course_id = ?", Date.today.to_s,
        current_user.id, course.id).present?
    end
  end
end
