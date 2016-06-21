class SessionsController < ApplicationController

  def show
  end

  def login    
    current_user.destroy if current_user.anonymous?
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to'/'
    else
      redirect_to '/login', alert: "Incorrect login details" 
    end
  end

  def logout
    session.clear
    redirect_to '/'
  end
  
end

