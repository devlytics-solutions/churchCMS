Rails.application.routes.draw do
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  Rails.application.routes.draw do
  get 'dashboard/index'
    resources :churches
    resources :branches
    resources :members
    resources :attendances
    resources :finances
  
    root 'dashboard#index'
  end
  
end
