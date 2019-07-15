Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :companies do
    resources :claims, only: :create
  end

  devise_for :users
  root to: "companies#index"
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
