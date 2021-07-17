Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :companies, only: [ :index, :show, :update, :create ]
      resources :tickets, only: [ :index, :show, :update, :create ]
      resources :orders, only: [ :index, :show, :update, :create ]
    end
  end

  resources :tickets, only: [:show, :create, :dashboard] do
    resources :orders
  end

  resources :dashboards, only: [:show, :new, :create]
end
