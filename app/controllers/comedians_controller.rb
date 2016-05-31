class ComediansController < ApplicationController
  def index
    @comedians = Comedian.all
  end

  def show
    @comedian = Comedian.find(params[:id])
  end

  def likes
    @comedians = current_user.liked_comedians
  end

end
