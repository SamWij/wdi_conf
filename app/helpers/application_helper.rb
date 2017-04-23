module ApplicationHelper
  def current_user
    user = User.find_by(id: session[:user_id])
  end
  def current_user_full_name
    full_name = "#{current_user.first_name} #{current_user.last_name}"
  end

  def current_user_email
    current_user.email
  end

  def get_tickets
    current_user.tickets
  end

  def get_tickets_count
    get_tickets.count
  end
end
