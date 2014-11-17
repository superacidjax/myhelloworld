module LessonsHelper

  def user_has_access?
    if sales = current_user.sales.where(course_id: course.id)
      if sales.present?
        sales.last.access_expiration_date > Date.today
      end
    end
  end

  def user_completion(lesson)
    if completions = lesson.completions.where(user_id: current_user.id)
      completions.present? && completions.last.completed?
      @completion = completions.last
    end
  end
end
