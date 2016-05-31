class LikesController < ApplicationController

  def create
    Like.create(user_id: current_user.id, comedian_id: params[:comedian_id])
    head :created
  end

  def delete
    like = Like.find_by(user_id: current_user.id, comedian_id: params[:comedian_id])
    like.destroy
    head :accepted
  end




end