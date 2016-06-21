class UsersController < ApplicationController

  def new
  end
  
  def create
    if current_user.anonymous?
      saved = current_user.update(name: params[:user][:name], email: params[:user][:email], 
                          password: params[:user][:password], 
                          password_confirmation: params[:user][:password_confirmation])
      unless saved
        redirect_to '/signup', alert: "Passwords don't match"
        return
      end
    end
    redirect_to '/'
  end

  def likes
    @comedians = current_user.liked_comedians
  end

  def suggestions
    @comedians = current_user.suggested_comedians
  end

end

