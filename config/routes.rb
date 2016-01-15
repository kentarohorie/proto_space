Rails.application.routes.draw do
  devise_for :users
  root 'protos#index'
  resources :users, only: [:show, :edit, :update]
  resources :protos do
    resources :comments, only: [:create], module: :prototypes
    namespace :api do
      resources :likes, only: [:create, :update]
    end
  end
end

