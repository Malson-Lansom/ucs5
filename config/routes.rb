Rails.application.routes.draw do
  devise_for :users
  get 'cards/index'
  root "cards#index"
end