Rails.application.routes.draw do
  resources :units
  resources :locations
  resources :location_types
  resources :goods_order_details
  resources :goods_orders
  resources :goods_order_types
  resources :transportation_orders
  resources :transportation_types
  resources :people
  resources :person_types
  resources :contact_channels
  resources :attribute_values
  resources :attribute_fields
  resources :offer_details
  resources :offers
  resources :products
  resources :identifiers
  resources :identifier_types
  resources :notifications
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "notifications#index"
end
