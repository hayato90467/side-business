Rails.application.routes.draw do
  devise_for :users
  root to: "comments#index"
  resources :users, only: [:new, :edit, :update]
  resources :comments, only: [:index, :edit, :create, :destroy]
end
