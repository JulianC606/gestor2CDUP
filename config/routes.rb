Rails.application.routes.draw do

  namespace :accounting do
    resources :accounts
    resources :transactions
    resources :events
    
  end
  get '/accounting', to: 'accounting#show'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  root 'pages#home'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
