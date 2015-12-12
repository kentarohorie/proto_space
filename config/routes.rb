Rails.application.routes.draw do
  devise_for :users
  root 'protos#index'
  resources :users, only: [:show, :edit, :update] do
    resources :protos, only: [:new, :create, :show]
  end

end
