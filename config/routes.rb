Rails.application.routes.draw do
  devise_for :users
  root to: "comments#index"
  resources :users, only: [:new, :edit, :update]

end
