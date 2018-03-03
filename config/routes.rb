Rails.application.routes.draw do

  get 'form_types/index'

  get 'form_types/show'

  get 'form_types/new'

  get 'form_types/edit'

  get 'form_types/create'

  get 'form_types/update'

  get 'form_types/destroy'

  get 'form_template/show'

  get 'form_template/new'

  get 'form_template/edit'

  get 'form_template/destroy'

  root to: "home#show"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :forms

end
