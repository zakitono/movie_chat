Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/show'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
end
