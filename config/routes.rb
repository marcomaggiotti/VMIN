Rails.application.routes.draw do
  root 'home#index'
  resources :activities
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy] 
  get '/signup', to: 'user#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
end
