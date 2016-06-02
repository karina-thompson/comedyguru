class ComediansController < ApplicationController
  
  def index
    @comedians = Comedian.all
  end

  def show
    @comedian = Comedian.find(params[:id])
  end
  
  def search
    @comedians = Comedian.where("name ilike ?","%#{params[:search]}%")
    render :index
  end

  
end
