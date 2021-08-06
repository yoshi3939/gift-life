Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  resources :gifts do
    collection do
      get 'search'
    end
  end
  resources :items, only: :index
  resources :interests do
    collection do
      get 'search'
    end
  end

end
