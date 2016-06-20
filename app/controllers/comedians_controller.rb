class ComediansController < ApplicationController
  
  def index
    @comedians = Comedian.all.shuffle
  end

  def show
    @comedian = Comedian.find(params[:id])
  end
  
  def search
    @comedians = Comedian.where("name ilike ?","%#{params[:search]}%")
    render :index
  end 

  def new
  end

  def create
    render :new
  end

end
