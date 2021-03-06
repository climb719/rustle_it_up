Rails.application.routes.draw do
  root "sessions#home"
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  #login route
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout route
  delete '/logout' => 'sessions#destroy'
 
  resources :ingredients
  resources :categories
  resources :comments
  resources :users
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
