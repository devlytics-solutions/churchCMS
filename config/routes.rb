Rails.application.routes.draw do
  devise_for :users

  get 'dashboard/index'
  
  resources :churches
  resources :branches
  resources :members
  resources :attendances
  resources :finances

  root 'dashboard#index'
end
