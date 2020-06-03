Rails.application.routes.draw do
  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  resources :acts
  resources :sessions
  root 'acts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
