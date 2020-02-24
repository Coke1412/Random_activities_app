Rails.application.routes.draw do

  resources :activities
  resources :categories do
    delete 'delete/:image_id', on: :member, to: 'categories#destroy_image', as: 'delete_image'
  end
  
  devise_for :users
  
  get 'pages/index'
  

  
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
