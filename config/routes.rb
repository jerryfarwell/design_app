Rails.application.routes.draw do

  devise_for :users

  resources :welcome
  resources :users do 
    resources :avatars, only: [:create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "welcome#index"
end
