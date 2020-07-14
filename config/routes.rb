Rails.application.routes.draw do
  get 'rails/g'
  get 'rails/controller'
  get 'rails/cards'
  get 'rails/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "cards#index"
end
