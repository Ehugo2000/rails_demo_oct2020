Rails.application.routes.draw do
  devise_for :models
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show, :new, :create, :edit, :update]
end