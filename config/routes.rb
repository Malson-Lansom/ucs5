Rails.application.routes.draw do

  devise_for :users
  root 'cards#index'
  resources :users, only: [:edit, :update, :index]
  resources :folders, only: [:new, :create, :edit, :update] do
    resources :cards, only: [:index, :create]
    # namespace :api do
    #   resources :cards, only: :index, defaults: { format: 'json' }
    # end
  end
end