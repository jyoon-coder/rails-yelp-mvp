Rails.application.routes.draw do
  resources :restaurants do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :reviews, only: [:new, :create]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  collection do
    get :top
  end
  member do
    get :chef
  end
resources :reviews, only: [:destroy]
  # Defines the root path route ("/")
  # root "posts#index"
  end
end
