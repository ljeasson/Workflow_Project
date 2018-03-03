Rails.application.routes.draw do

  get 'forms/index'

  get 'forms/show'

  get 'forms/user_index'

  get 'forms/admin_index'

  get 'forms/create'

  get 'forms/new'

  get 'forms/edit'

  get 'forms/destroy'

  get 'pages/index'

  get 'pages/create'

  get 'pages/new'

  get 'pages/destroy'

  root to: "home#show"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :forms


end
