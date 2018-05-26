Rails.application.routes.draw do

  namespace :dashboard do
    get 'users/index'
  end

  get 'administrative', to: 'administrative#index'
  get 'dashboard', to: 'dashboard#index'
  
  namespace :administrative do
    resources :transfers, except: [:show]
    resources :events, except: [:show]
    resources :projects, except: [:show]
    resources :users

  end
   namespace :dashboard do

    get 'transfers/index'
    get 'events/index'
    get 'projects/index'
    get 'users/index'
    resources :profile, only: [:edit, :update]

  end
  
  devise_for :admins , controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions', registrations: 'sign/registrations' }
  
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
