Rails.application.routes.draw do
  devise_for :users
  root 'protos#index'
  resources :users, only: [:show, :edit, :update]
  resources :protos do
    namespace :prototypes do
      resources :comments, only: [:create]
    end
    namespace :api do
      resources :likes, only: [:create, :update]
    end
  end
end
