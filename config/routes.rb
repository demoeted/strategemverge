Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'webcams/index'
  get 'webcams/show'
  get 'videocards/index'
  get 'videocards/show'
  get 'thermal_pastes/index'
  get 'thermal_pastes/show'
  get 'speakers/index'
  get 'speakers/show'
  get 'rams/index'
  get 'rams/show'
  get 'powersupplies/index'
  get 'powersupplies/show'
  get 'orderproducts/index'
  get 'orderproducts/show'
  get 'orders/index'
  get 'orders/show'
  get 'optical_drives/index'
  get 'optical_drives/show'
  get 'mouses/index'
  get 'mouses/show'
  get 'motherboards/index'
  get 'motherboards/show'
  get 'keyboards/index'
  get 'keyboards/show'
  get 'customers/index'
  get 'customers/show'
  get 'cpus/index'
  get 'cpus/show'
  get 'cpu/index'
  get 'cpu/show'
  get 'computer_monitor/index'
  get 'computer_monitor/show'
  get 'cases/index'
  get 'cases/show'
  get 'case_fans/index'
  get 'case_fans/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/about_us", to: "about_u#index"
  get "/contact_us", to: "contact_u#index"
end
