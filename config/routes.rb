Rails.application.routes.draw do
  devise_for :users, only: :sessions
  root to: 'keywords#index'
  resources :keywords, only: :index
end
