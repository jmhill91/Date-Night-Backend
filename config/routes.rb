Rails.application.routes.draw do
  resources :users, only: [:index, :show, :update]
  resources :rendezvou, only: [:index, :show, :create]
  resources :attire, only: [:index, :show]
  resources :rendezvous_type, only: [:index, :show]
  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  get "/profile", to: "users#profile"
end