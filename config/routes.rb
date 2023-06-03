
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  # delete "bookmarks/:id", to: "bookmarks#destroy", as: :bookmark_destroy
  resources :reviews, only: :destroy
  resources :movies, only: [:show]
end
