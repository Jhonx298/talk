Rails.application.routes.draw do
  devise_for :users
  root to: "themes#index"

  resources :themes, only: [:new, :create] do
    resources :messages, only: [:index, :create]
    collection do
      get 'search'
    end
  end
end
