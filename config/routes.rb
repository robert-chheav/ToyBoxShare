Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # get "up" => "rails/health#show", as: :rails_health_check
  resources :toys do
    resources :reservations
  end

  resources :users do
    resources :reservations
  end

  resources :reservations, only: :destroy
  get 'dashboard', to: "pages#dashboard"
end
