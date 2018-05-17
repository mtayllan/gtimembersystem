Rails.application.routes.draw do
  
  get 'administrative', to: 'administrative/main#index'
  
  devise_for :admins, controllers: {sessions: 'sign/sessions'}
  devise_for :users,  controllers: {sessions: 'sign/sessions'}
  
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
