BurningAirlines::Application.routes.draw do
  devise_for :users
  resources :ariplanes


  root to: "home#index"
end
