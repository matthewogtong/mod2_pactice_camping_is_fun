Rails.application.routes.draw do
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create]
  resources :signups, only: [:new, :create]
end
