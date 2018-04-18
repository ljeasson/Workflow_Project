Rails.application.routes.draw do


  get 'roles/new'

  get 'roles/create'

  get 'roles/destroy'

  get 'roles/update'

  get 'assignments/new'

  get 'assignments/create'

  get 'assignments/destroy'

  get 'assignments/update'

  post '/signatures/new', to: 'signatures#sign'


  root to: "home#show"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :forms
  resources :form_types
  resources :roles
  resources :assignments
  resources :signatures

end
