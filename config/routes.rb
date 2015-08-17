Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "home#index"
  
  resources   :topics do 
    resources :posts
  end

  devise_for  :users
  
  get 'users/edit_profile'
  get 'users/edit'
  post 'users/update_profile', to: "users#update_profile"

end
