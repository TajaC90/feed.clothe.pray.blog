Rails.application.routes.draw do

# resources created the routes for CRUD
  resources :users
  root 'home#index'
  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
