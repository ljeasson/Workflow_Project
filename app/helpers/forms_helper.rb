module FormsHelper
  def a_current_user
    user = User.where(:id => current_user.id)
    return user
  end
end
