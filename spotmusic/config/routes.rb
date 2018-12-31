Rails.application.routes.draw do
  get 'search/index'
  get 'search/new'
  devise_for :users

  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
    resources :search, only: [:index, :new], as: :searches
  end
  
  unauthenticated :user do
    root to: "home#index", as: :root
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html