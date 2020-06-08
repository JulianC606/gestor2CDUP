Rails.application.routes.draw do

  namespace :accounting do
  end
  namespace :accounting do
  end
  namespace :accounting do
    resources :accounts
    resources :transactions
    resources :events
    resources :entry_lines, only: [:index, :show]
    resources :entries, only: [:index, :show]


    
  end
  get '/accounting', to: 'accounting#show'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  root 'pages#home'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  } 
  resources :users, only: [:index, :edit, :update, :delete]

  get 'profile', action: :show, controller: 'users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
