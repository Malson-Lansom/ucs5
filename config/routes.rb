Rails.application.routes.draw do
  devise_for :users
  # get 'panels/index'
  root "groups#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :panels, only: [:index, :new, :create]
  end
end
