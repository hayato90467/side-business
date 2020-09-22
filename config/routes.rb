Rails.application.routes.draw do
  devise_for :users
  root to: "comments#index"

  # resources :comments, only: :index
end
