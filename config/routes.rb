Rails.application.routes.draw do
  devise_for :users
  resources :tours, only: [:index, :show]
  resources :coworkers, only: :show
  resources :users, only: [:index, :show]

  root to: "tours#index"
end
