Rails.application.routes.draw do
  devise_for :users
  root 'folders#index'
  resources :folders, only: [:new, :create, :edit, :update]
end