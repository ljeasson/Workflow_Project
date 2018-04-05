Rails.application.routes.draw do


  get 'assignments/new'

  get 'assignments/create'

  get 'assignments/destroy'

  get 'assignments/update'

  root to: "home#show"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :forms
  resources :form_types

end
