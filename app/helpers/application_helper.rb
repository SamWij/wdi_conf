module ApplicationHelper
  def current_user
    user = User.find_by(id: session[:user_id])
  end
  def current_user_full_name
    user = User.find_by(id: session[:user_id])
    puts  user
    #full_name = "#{user.first_name} #{user.last_name}"
  end

  def current_user_email
    user = User.find_by(id: session[:user_id])
    user.email
  end
end
