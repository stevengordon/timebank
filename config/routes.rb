Rails.application.routes.draw do

  # Root route -- this is temporary until we have better starting point
  root to: "site#index" # change this once we have some better page to start
  
  # User model & route generated via Devise gem
  devise_for :users

  # ServiceRequest model has standard resources routes
  resources :service_requests

  # Manual routes for all the rest
  get "/users", to: "users#index" # Show all users is not part of Devise set of Routes
  get "/about", to: "site#about"
  get "/contact", to: "site#contact"

  get "/users/account", to: "users#account"
  # Also need post/get routes for edit view of users#account

  get "/exchanges/:id/create", to: "exchanges#proposal_by_provider", as: 'exchanges_create'
  
end
