Rails.application.routes.draw do
  get 'user/new'

  get 'user/create'

  get 'user/destroy'

  # get 'page/index', to: 'page#index'

  get '/dashboard', to: 'dashboard#index'

  root 'page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
