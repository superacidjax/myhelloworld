module LessonsHelper

  def user_has_access?
    if current_user
      if sales = current_user.sales.where(course_id: course.id)
        if sales.present?
          sales.last.access_expiration_date > Date.today
        end
      end
    end
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
