Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :gifts
  resources :items, only: :index
  resources :interests
end
