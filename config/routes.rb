Rails.application.routes.draw do
  resources :listings do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show]
  devise_for :users

  root to: "listings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
