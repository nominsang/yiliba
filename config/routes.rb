Rails.application.routes.draw do
  get 'home/index'
  resources :record_statuses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
