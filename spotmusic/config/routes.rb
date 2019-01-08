Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/new'
  get 'favorites/delete'
  get 'albums/index'
  get 'artists/index'
  get 'categories/index'
  get 'search/index'
  get 'search/new'
  devise_for :users

  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
    resources :search, only: [:index, :new], as: :searches
    resources :categories, only: :index
    resources :artists, only: :index
    resources :albums, only: :index
  end
  
  unauthenticated :user do
    root to: "home#index", as: :root
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html