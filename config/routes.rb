Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :themes, only: [:new]
end
