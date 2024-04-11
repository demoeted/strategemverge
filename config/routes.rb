Rails.application.routes.draw do

  resources :about_u, only: [:index]
  resources :case_fans, only: [:index, :show]
  resources :cases, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :computer_monitor, only: [:index, :show]
  resources :contact_u, only: [:index]
  resources :cpus, only: [:index, :show]
  resources :customers, only: [:index, :show]
  resources :keyboards, only: [:index, :show]
  resources :mouses, only: [:index, :show]
  resources :motherboards, only: [:index, :show]
  resources :optical_drives, only: [:index, :show]
  resources :orderproducts, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :powersupplies, only: [:index, :show]
  resources :rams, only: [:index, :show]
  resources :speakers, only: [:index, :show]
  resources :thermal_pastes, only: [:index, :show]
  resources :videocards, only: [:index, :show]
  resources :webcams, only: [:index, :show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "products#index"
  
  get "about_us", to: "about_u#index"
  get "contact_us", to: "contact_u#index"
  get "monitors", to: "computer_monitor#index"
  get "memory", to: "rams#index"
  get "power_supplies", to: "powersupplies#index"
  get "video_cards", to: "videocards#index"
end

