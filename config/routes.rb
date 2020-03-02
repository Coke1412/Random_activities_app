Rails.application.routes.draw do
  devise_for :users

  resources :activities
  resources :categories do
    delete 'delete/:image_id', on: :member, to: 'categories#destroy_image', as: 'delete_image'
  end
  
  get 'pages/index'
    
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
