module UsersHelper

  def admin?
    current_user && current_user.admin?
  end

  def has_active_course?(user_id)
    Charge.where(
      "access_expiration_date > ? AND user_id = ?",
      Date.today.to_s, user_id).present?
  end

end
