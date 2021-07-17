Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :companies, only: [ :index, :show, :update, :create ]
      resources :tickets, only: [ :index, :show, :update, :create ]
      resources :orders, only: [ :index, :show, :update, :create ]
    end
  end
end
