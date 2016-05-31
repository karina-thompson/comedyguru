Rails.application.routes.draw do

  get '/' => 'comedians#index'
  get '/likes' => 'comedians#likes' 
  get '/login' => 'users#login'
  get '/:id' => 'comedians#show'


  post '/likes' => 'likes#create'

  delete '/likes' => 'likes#delete'


  


end
