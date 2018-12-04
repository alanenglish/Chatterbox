Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'chatroom#index'
  # custom login route for sessions new action - page displays login form
  get '/login' => 'sessions#new'
  # custom login route for sesseions create action - actually signs the user into platform
  post '/login' => 'sessions#create'
  # custom logout action
  delete '/logout' => 'sessions#destroy'
  # create a new message
  post '/message' => 'messages#create'
end
