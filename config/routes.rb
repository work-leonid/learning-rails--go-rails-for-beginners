Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'about', to: 'about#index'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'


  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  delete 'logout', to: 'sessions#destroy'

  root "main#index"
end
