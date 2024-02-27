Rails.application.routes.draw do
  get 'comics/index'
  get 'comics/show'
  get 'comics/create'
  get 'comics/edit'
  get 'comics/update'
  get 'comics/destroy'
  get 'profiles/edit'
  get 'profiles/update'
  get 'profiles/destroy'
  get 'bookings/index'
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
