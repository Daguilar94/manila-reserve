Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: :registrations }
  resources :tours, only: [:index, :show] do
    resources :coworkers, only: [:index, :show]
  end
  resources :birds

  root to: "birds#index"
end
