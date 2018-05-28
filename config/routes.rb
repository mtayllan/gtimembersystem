Rails.application.routes.draw do

  namespace :dashboard do
    get 'users/index'
  end

  get 'administrative', to: 'administrative#index'
  get 'dashboard', to: 'dashboard#index'
  
  namespace :administrative do
    resources :transfers, except: [:show]
    resources :events
    resources :projects, except: [:show]
    resources :users
    get 'search/users', to: 'search#users'
    get 'search/events', to: 'search#events'
    post 'events/:id/user_id=:user_id', to: 'events#create_participation'
  end
  
  namespace :dashboard do
    get 'transfers/index'
    get 'events/index'
    resources :projects, only: [:index, :show]
    resources :users, only: [:index, :show]
    resources :profile, only: [:edit, :update]
  end
  
  devise_for :admins , controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions', registrations: 'sign/registrations' }
  
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
