Rails.application.routes.draw do
  root 'cards#index'

  resources :folders, only: [:new, :create]
end
