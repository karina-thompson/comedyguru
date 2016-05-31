class LikesController < ApplicationController

  def create
    Like.create(user_id: current_user.id, comedian_id: params[:comedian_id])
    head :created
  end

  def delete
    like = Like.find_by(user_id: current_user.id, comedian_id: params[:comedian_id])
    
    if like.nil?
      head :not_found 
      return
    end

    like.destroy
    head :no_content
  end
end