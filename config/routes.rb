Rails.application.routes.draw do
  root to: "messages#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  get 'messages/index'
  resources :rooms, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
