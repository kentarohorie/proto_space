Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users, only: [:show, :edit, :update] do
    resources :protos, only: [:new, :create]
  end

end
