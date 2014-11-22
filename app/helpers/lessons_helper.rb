module LessonsHelper

  def user_has_access?
    Charge.where(
      "access_expiration_date > ? AND user_id = ? AND course_id = ?", Date.today.to_s,
      current_user.id, course.id).present?
  end

  def user_completion(lesson)
    if current_user
      if completions = lesson.completions.where(user_id: current_user.id)
        completions.present? && completions.last.completed?
        @completion = completions.last
      end
    end
  end

  def lesson_completed?
    if lesson_completion = Completion.where(user_id: current_user.id,
      lesson_id: lesson.id, completed: true).last
      lesson_completion
    end
  end

  def next_lesson
    if next_lesson = Lesson.find_by_lesson_number(lesson.lesson_number + 1)
      @next_lesson = course_lesson_path(course, next_lesson)
    end
  end

  def previous_lesson
    if previous_lesson = Lesson.find_by_lesson_number(lesson.lesson_number - 1)
        @previous_lesson = course_lesson_path(course, previous_lesson)
    end
  end

end
