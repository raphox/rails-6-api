Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  current_api_routes = lambda do
    resources :posts
  end

  namespace :api do
    scope module: :v1, &current_api_routes
    namespace :v1, &current_api_routes
    match ':api/*path', to: redirect('/api/v1/%<path>s'), via: :all
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
