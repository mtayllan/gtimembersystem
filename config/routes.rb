Rails.application.routes.draw do
  
 

  namespace :home do
    get 'users/index'
  end

  namespace :home do
    get 'cash_flow/index'
  end

  namespace :home do
    get 'events/index'
  end

  namespace :home do
    get 'projects/index'
  end

  get 'administrative', to: 'administrative/main#index'
  
  namespace :administrative do

  	resources :events, except: [:show]
  	resources :projects, except: [:show]
    resources :cash_flow, only: [:show]
  	resources :users, only: [:show]

  end
   namespace :home do

    resources :cash_flow, only: [:show]
    resources :events, only: [:show]
    resources :projects, only: [:show]
    resources :users, only: [:show]

  end
  
  devise_for :admins, :skip => [:registrations], controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions', registrations: 'sign/registrations' }
  
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
