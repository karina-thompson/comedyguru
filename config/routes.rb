Rails.application.routes.draw do

  get '/'             => 'comedians#index'
  get '/comedian/:id' => 'comedians#show'

  get '/signup'  => 'users#new'
  post '/signup' => 'users#create'

  get '/user/likes'    => 'users#likes' 
  post '/user/likes'   => 'likes#create'
  delete '/user/likes' => 'likes#delete'

  get '/login'     => 'sessions#show'
  post '/login'    => 'sessions#login'
  delete '/logout' => 'sessions#logout'  

end
