Rails.application.routes.draw do
  devise_for :users
  # get 'panels/index'
  root "panels#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
end