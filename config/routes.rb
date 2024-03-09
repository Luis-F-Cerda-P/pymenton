Rails.application.routes.draw do # rubocop:disable Metrics/BlockLength
  # RUTAS DEL TUTORIAL DE GORAILS QUE NO VOY A USAR
  # get 'registration', to: 'users#new'
  # post 'registration', to: 'users#create'
  # Recursos creados sin scaffolding
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  resources :sessions, path: '/login', only: %i[new create]
  delete 'logout', to: 'sessions#destroy'
  # Recursos creados con scaffolding
  resources :users
  resources :product_components
  resources :shipment_receipts
  resources :packaging_contents
  resources :shipment_packages
  resources :item_issuances
  resources :order_item_shipment_items
  resources :shipment_items
  resources :shipment_statuses
  resources :shipments
  resources :shipment_status_types
  resources :shipment_types
  resources :order_items
  resources :order_contact_mechanisms
  resources :orders
  resources :party_contact_mechanisms
  resources :contact_mechanisms
  resources :contact_mechanism_types
  resources :order_types
  resources :feature_applicabilities
  resources :applicability_types
  resources :features
  resources :feature_types
  resources :good_identifications
  resources :identifications
  resources :identification_types
  resources :reorder_guidelines
  resources :picklist_items
  resources :inventory_items
  resources :goods
  resources :parties
  resources :party_types
  resources :picklists
  resources :containers
  resources :lots
  resources :container_types
  resources :facilities
  resources :notifications
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  root to: 'main#index'
end
