Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "customers/index"
  get "/customers/", to: "customers#index"
  get "customers/alphabetized", to: "customers#alphabetized", as: "customersalphabetized"
  get "customers/missing_email", to: "customers#missing_email", as: "customerswithoutemail"
end
