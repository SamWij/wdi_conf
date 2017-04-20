Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  get 'user/destroy'


  get '/login', to: 'page#login'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  get '/dashboard', to: 'dashboard#index'


  get '/payment', to: 'page#payment'
  resources :charges
  root 'page#index'
end
