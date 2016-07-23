Rails.application.routes.draw do
  devise_for :users
  root to: 'invoices#new'
  resources :invoices
end
