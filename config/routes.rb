Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get 'render/index'
  # get "up" => "rails/health#show", as: :rails_health_check
  
  root 'render#index'
  # get "/nickelfox"
  # Defines the root path route ("/")

  resources :volunteers, only: [:create]
  resources :programs do
    resources :categories, only: [:index, :show]
  end
  resources :students, only: [:index, :create]
  resources :listings do
    resources :products, only: [:index, :show]
  end
  resources :teams, only: [:index, :show]
end

