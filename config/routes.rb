Rails.application.routes.draw do

  resources :activities
  resources :categories
  devise_for :users
  
  get 'pages/index'

  
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
