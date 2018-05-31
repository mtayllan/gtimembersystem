Rails.application.routes.draw do

  get 'administrative', to: 'administrative#index'
  get 'dashboard', to: 'dashboard#index'
  
  namespace :administrative do
    resources :transfers, except: [:show]
    resources :events
    resources :projects
    resources :users
    post 'projects/:id/user_id=:user_id&act=:act', to: 'projects#edit_contributions'
    post 'events/:id/user_id=:user_id&act=:act', to: 'events#edit_participation'
  end
  
  namespace :dashboard do
    get 'transfers', to: "transfers#index"
    resources :events, only: [:index, :show]
    resources :projects, only: [:index, :show]
    resources :users, only: [:index, :show]
    resources :profile, only: [:edit, :update]
  end
  
  devise_for :admins , controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions', registrations: 'sign/registrations' }
  
  root 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
