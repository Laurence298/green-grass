Rails.application.routes.draw do
  resources :customer
  root "customer#index"
end
