Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callback: 'users/omniauth_callbacks'
  }
   
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :activities
  resources :categories do
    delete 'delete/:image_id', on: :member, to: 'categories#destroy_image', as: 'delete_image'
  end

  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  
  get 'pages/index'
    
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
