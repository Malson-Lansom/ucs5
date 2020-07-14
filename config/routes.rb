Rails.application.routes.draw do
  get 'panels/index'
  root "panels#index"
end