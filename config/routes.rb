Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/show'
  resources :posts
  devise_for :users
  resources :users, :only => [:show]
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
