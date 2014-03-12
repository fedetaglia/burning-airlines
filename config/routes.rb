BurningAirlines::Application.routes.draw do
  resources :airplanes

  resources :flights

  resources :reservations

  devise_for :users

  root to: "home#index"
end
