Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "flights#index"

  get '/flight', to: 'flights#find_flights'

  resources :bookings, only: [:new, :create, :show]

end
