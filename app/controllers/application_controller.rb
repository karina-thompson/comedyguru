class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user      
    real_user_id = session[:user_id]
    user = User.find_by(id: real_user_id)

    unless user
      user = User.create_anonymous!
      session[:user_id] = user.id
    end
    user
  end

end
