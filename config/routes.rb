Rails.application.routes.draw do
  devise_for :users
  get "home/index"
  resources :applicants
  resources :vacancies
  resources :companies

  # Defines the root path route ("/")
  root "home#index"
end
