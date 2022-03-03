Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :candles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
