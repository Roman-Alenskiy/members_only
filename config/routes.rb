Rails.application.routes.draw do
  root 'static_pages#home'
# Static pages
  get '/home', to: 'static_pages#home'
# Users
  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

end