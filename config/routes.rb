Rails.application.routes.draw do
  root 'cards#index'
  resources :groups, only: [:new, :create]
end
