Rails.application.routes.draw do
  get "customers/index"
  resources :customers
  root "customer#index"
end
