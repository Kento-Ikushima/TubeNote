Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :tasks
  resources :followings
  resources :followers
  resources :folders
  root to: 'tasks#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
