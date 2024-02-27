Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  get "index", to: "comics#index"
  get "show", to: "comics#show"
  get "create", to: "comics#create"
  get "edit", to: "comics#edit"
  get "update", to: "comics#update"
  get "destroy", to: "comics#destroy"

  # resources :comics do
  #   resources :bookings, only: [ :new, :create ]
  # end

  get 'profiles/update'
  get 'profiles/destroy'
  # resources :profiles, only: [ :update ]

  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  # resources :bookings, only: [ :show ]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
