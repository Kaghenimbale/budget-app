Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  root 'users#index'
  
  resources :users, only:[:index] do
    resources :categories, only: [:index, :show, :create, :new] do
      resources :activities, only: [:index, :show, :create, :new, :destroy] 
      
    end
  end
  
  devise_scope :user do
    get 'users/new', to: 'users/registrations#new', as: 'new_user'
  end
  
  get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
end
