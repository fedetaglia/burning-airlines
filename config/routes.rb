BurningAirlines::Application.routes.draw do
  resources :airplanes

  resources :flights

  resources :reservations

  resources :seats

  devise_for :users

  root to: "pages#index"
end
