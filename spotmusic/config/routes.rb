Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "dashboard#index", as: :authenticated_root
    resources :search, only: [:index, :new], as: :searches
    resources :categories, only: :index
    resources :artists, only: :index do
      post "/favorite", to: "favorites#new", on: :member, defaults: {format: :js, favoritable_type: 'Artist'}
      delete "/favorite", to: "favorites#delete", on: :member, defaults: {format: :js, favoritable_type: 'Artist'}
    end 
    resources :albums, only: :index do
      post "/favorite", to: "favorites#new", on: :member, defaults: {format: :js, favoritable_type: 'Album'}
      delete "/favorite", to: "favorites#delete", on: :member, defaults: {format: :js, favoritable_type: 'Album'}
      resources :recently_heards, only: :new
    end
    resources :songs, only: [] do
      post "/favorite", to: "favorites#new", on: :member, defaults: {format: :js, favoritable_type: 'Song'}
      delete "/favorite", to: "favorites#delete", on: :member, defaults: {format: :js, favoritable_type: 'Song'}
    end
    resources :favorites, only: :index
  end
  
  unauthenticated :user do
    root to: "home#index", as: :root
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html