BurningAirlines::Application.routes.draw do
  resources :airplanes

  resources :flights

  resources :reservations


  get '/search' => 'search#index', :as => :search

  resources :seats


  devise_for :users

  root to: "pages#index"
end
