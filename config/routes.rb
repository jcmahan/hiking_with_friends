Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  resources :users, only: [:show, :new, :create, :edit, :update]
  resources :hikes do 
    resources :signups, shallow: true
  end
  resources :locations do 
    resources :hikes, shallow: true
  end
  root 'pages#show', page: 'home'
  get '/pages/:page', to: 'pages#show', as: :page
end
