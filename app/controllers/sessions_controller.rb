class SessionsController < ApplicationController

   def create
      session[:user_id] = current_user
   end

end
