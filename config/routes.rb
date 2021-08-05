Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :gifts, only: [:index, :new, :create]
  resources :items, only: :index
  resources :interests
end
