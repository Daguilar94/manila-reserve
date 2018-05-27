Rails.application.routes.draw do

  devise_for :users, path: 'auth', controllers: { registrations: :registrations }
  # devise_for :users, path: 'auth'
  resources :tours, only: [:index, :show] do
    resources :coworkers, only: [:index, :show]
  end
  resources :birds

  root to: "birds#index"
end
