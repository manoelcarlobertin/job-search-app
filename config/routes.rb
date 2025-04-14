Rails.application.routes.draw do
  devise_for :companies
  devise_for :users
  # get "/vacancies" => "vacancies#index", as: :company_root # passou o model + root, ao user logar.
  resources :applicants
  resources :vacancies
  resources :companies
end
