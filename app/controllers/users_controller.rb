class UsersController < ApplicationController

  def new
  end
  
  def create
    if current_user.anonymous?
      saved = current_user.update(name: params[:user][:name], email: params[:user][:email], 
                           password: params[:user][:password], 
                           password_confirmation: params[:user][:password_confirmation])
      unless saved
        flash[:notice] = current_user.errors 
        render '/users/new'
        return
      end
    end
    redirect_to '/'
  end

  def likes
    @comedians = current_user.liked_comedians
  end


end

