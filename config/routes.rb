Rails.application.routes.draw do
  
  namespace :administrative do
    get 'events/index'
  end
  
  get 'administrative', to: 'administrative/main#index'
  
  devise_for :admins, :skip => [:registrations], controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions', registrations: 'sign/registrations' }
  
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
