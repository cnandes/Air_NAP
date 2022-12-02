Rails.application.routes.draw do
  devise_for :users
  root to: "nap_spaces#home"

  resources :nap_spaces

  resources :bookings, only: [:index, :show]

  # get "/nap_space", to: "nap_spaces#home"
  # get "/nap_space/index", to: "nap_spaces#index"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
