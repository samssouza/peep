Rails.application.routes.draw do
  
  resources :users, only: [:new, :create, :index] do
    resources :posts
    resources :followers
  end
  #get 'login', to: 'sessions#new'
  #get 'welcome', to: 'sessions#welcome'
  #get 'authorized', to: 'sessions#page_requires_login'
  root 'home#index'
  post '/', to: 'home#login'
  
end
