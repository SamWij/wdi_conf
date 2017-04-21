Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  get 'user/destroy'


  get '/login', to: 'page#login'
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  get '/dashboard', to: 'dashboard#index'

  get '/api/speakers', to: 'api/speakers#get_speakers'

  get '/profiles', to: 'page#profiles'

  get '/payment', to: 'page#payment'
  resources :charges


  root 'page#index'
end
