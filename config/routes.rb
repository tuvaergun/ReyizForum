Rails.application.routes.draw do

  root to: "home#index"
  resources   :topics do 
    resources :posts
  end
  devise_for  :users
  get 'users/edit'
  get 'users/update'

end
