Rails.application.routes.draw do
  

  get 'administrative', to: 'administrative/main#index'
  get 'dashboard', to: 'dashboard/main#index'
  
  namespace :dashboard do
    resources :profile, only: [:edit, :update]
  end
  
  namespace :administrative do
    resources :transfers, except: [:show]
    resources :events, except: [:show]
  	resources :projects, except: [:show]
  	resources :users, only: [:show]

  end
   namespace :home do
    resources :transfers, only: [:show]
    resources :events, only: [:show]
    resources :projects, only: [:show]
    resources :users

  end
  
  devise_for :admins, :skip => [:registrations], controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions', registrations: 'sign/registrations' }
  
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
