Rails.application.routes.draw do
  devise_for :users
  root 'protos#index'
  resources :users, only: [:show, :edit, :update]
  resources :protos do
    resources :comments, only: [:create], module: :prototypes
    resources :likes, only: [:create, :update], module: :prototypes
  end
end

