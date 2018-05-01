Rails.application.routes.draw do
  root 'static_pages#home'
# Static pages
  get '/home', to: 'static_pages#home'

end