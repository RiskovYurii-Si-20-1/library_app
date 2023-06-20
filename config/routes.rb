Rails.application.routes.draw do

  root 'books#index'
  devise_for :users
  resources :books
  resources :users do
    resources :bookmarks, only: [:index, :create, :destroy]
  end

  resources :genres
  resources :likes, only: [:create, :destroy]


  post 'like/:id', to: 'books#like', as: 'like_book'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
