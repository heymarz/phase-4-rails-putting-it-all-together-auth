Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :recipes, only: [:index, :create]

  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'
end
