Rails.application.routes.draw do


  get 'users/new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :requests

  root 'requests#index'

  resources :settings
  get 'settings/index'
  
  resources :users
  get '/manage' => 'users#index'
end
