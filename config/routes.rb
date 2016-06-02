Rails.application.routes.draw do

  get '/'             => 'comedians#index'
  get '/search' => 'comedians#search'
  get '/comedian/:id' => 'comedians#show'


  get '/signup'  => 'users#new'
  post '/signup' => 'users#create'
  
  get '/user/suggestions' => 'users#suggestions'
  get '/user/likes'       => 'users#likes' 
  post '/user/likes'      => 'likes#create'
  delete '/user/likes'    => 'likes#delete'


  get '/login'     => 'sessions#show'
  post '/login'    => 'sessions#login'
  delete '/logout' => 'sessions#logout'  

end
