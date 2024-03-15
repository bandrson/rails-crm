Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "customers#index", as: "customers"
  get "/customers/alphabetized", to: "customers#alphabetized", as: "customers_alphabetized"
  get "/customers/missing_email", to: "customers#missing_email", as: "customers_missing_email"
end
