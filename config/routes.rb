BurningAirlines::Application.routes.draw do
  resources :reservations

  devise_for :users
  resources :ariplanes


  root to: "home#index"
end
