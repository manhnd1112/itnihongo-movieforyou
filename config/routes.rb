Rails.application.routes.draw do
  root "static_pages#show"
  get 'users/omniauth_callbacks'
  devise_for :users
  devise_scope :user do  
  get "/users/auth/facebook/callback" => "users/omniauth_callbacks#facebook"  
  resources :reviews
end
