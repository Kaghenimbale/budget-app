Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'home/home'

  resources :groups, only: [:index, :show, :destroy]
  resources :expenses, only: [:index, :show, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"
end
