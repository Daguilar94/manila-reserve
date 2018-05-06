Rails.application.routes.draw do
  resources :tours, only: [:index, :show]
  resources :coworkers, only: :show
end
