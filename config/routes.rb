Rails.application.routes.draw do
  root to: "sessions#new"
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  get '/home' => 'sessions#index'
end