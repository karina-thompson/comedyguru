Rails.application.routes.draw do

  get '/' => 'comedians#index'

  post '/likes' => 'likes#create'

  delete '/likes' => 'likes#delete'

  


end
