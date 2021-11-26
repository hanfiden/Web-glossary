Rails.application.routes.draw do
  devise_for :users, only: :sessions
  root to: 'keywords#index'
  resources :keywords, except: [:show]

  constraints(host: /^(?!www\.)/i) do
    get '(*any)' => redirect { |_params, request|
      URI.parse(request.url).tap { |uri| uri.host = "www.#{uri.host}" }.to_s
    }
  end
end
