class DashboardController < ApplicationController
  def index
    @user_id = User.find(session[:user_id])
    @ticket = @user_id.tickets
  end
end
