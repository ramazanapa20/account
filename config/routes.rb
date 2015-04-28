Rails.application.routes.draw do
  resources :account_lists
  
  root "account_lists#index"
end
