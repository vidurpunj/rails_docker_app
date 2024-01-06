Rails.application.routes.draw do
  resources :techers
  resources :books
  root to: 'techers#index'
end
