Rails.application.routes.draw do
  devise_for :users
  root 'protos#index'
  resources :users, only: [:show, :edit, :update]
  resources :protos, only: [:new, :create, :show]
end
