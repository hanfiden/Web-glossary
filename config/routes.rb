Rails.application.routes.draw do
  root to: 'keywords#index'
  resources :keywords, only: :index
end
