Rails.application.routes.draw do
    get 'users/omniauth_callbacks'
  get 'static_pages/home'
 # resources :passwords
  devise_for :users

  root "static_pages#show"
  devise_scope :user do  
  get "/users/auth/facebook/callback" => "users/omniauth_callbacks#facebook"
end   
  resources :reviews
end
