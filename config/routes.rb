Rails.application.routes.draw do
  devise_for :users
  root to: 'goats#index'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :goats, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
  end

end
