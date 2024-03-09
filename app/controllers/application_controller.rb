class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :set_current_user

  def set_current_user
    return unless session[:user_id]

    Current.user = User.find_by(id: session[:user_id])
  end

  def require_user_logged_in!
    redirect_to new_session_path, alert: 'You must be signed in to do that.' if Current.user.nil?
  end
end
